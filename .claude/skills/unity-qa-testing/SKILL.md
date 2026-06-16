---
name: unity-qa-testing
description: >
  Test, verify, and quality-check a Unity 6 (6000.x) C# game from the command
  line with the Unity Test Framework (UTF) — no Editor GUI. Use this whenever you
  need to write automated tests for game logic (EditMode `[Test]`) or runtime
  gameplay (PlayMode `[UnityTest]` coroutines), set up a test assembly (.asmdef)
  that UTF can discover, assert on game state with NUnit (`Assert.That(...,
  Is.*)`, `Assert.AreEqual`) or check what the code logs (`LogAssert.Expect`),
  use `[SetUp]`/`[TearDown]`/`[UnitySetUp]`, run tests headless in batch mode
  (`-runTests -batchmode -nographics -testPlatform PlayMode -testResults
  results.xml`), read the NUnit results.xml, branch CI on the exit code, gather
  code coverage, or do pre-ship compliance/perf checks on a Player build. Reach
  for it any time the task is "write tests for this", "verify this feature
  works", "does the enemy actually chase", "run the tests headless / in CI",
  "the test can't wait a frame", "my tests aren't discovered", "add a CI test
  step with a pass/fail exit code", "test on the actual device/Player", or "QA
  this build". It has the verified `[UnityTest]` + `IEnumerator` frame-advance
  idiom, the `-runTests` CLI + exit-code rules, and the test-asmdef setup that
  UTF requires. Covers QA Tester and Compliance Tester work. Assumes a buildable
  project (unity-project-setup); the thing under test is built with the other
  unity-* skills.
---

# Unity QA / Test Framework (C#)

Verify a Unity game without a human or a display. Two jobs: **automated tests**
(assert on game logic with the Unity Test Framework) and **verification** (run
the real code, observe it behaves). Both run through the Editor in batch mode
(`-batchmode -nographics -runTests`) and report a pass/fail **exit code** plus an
NUnit **results.xml** that CI can branch on.

UTF is **NUnit + Unity extensions**: NUnit test classes, the `[UnityTest]`
coroutine attribute, a `LogAssert` log check, Unity-type comparers, and an
EditMode/PlayMode split decided by your test assembly's references.

> Unity 6 (6000.x). Snippets are doc-sourced from the embedded Unity 6 docs in
> `references/api/` (Test Framework manual + ScriptReference), **not
> compile-tested in this environment** — no Unity Editor is installed, so
> `scripts/unity.sh` exits 127. Install Unity 6 + set `$UNITY_PATH` to actually
> run tests.

## The one thing that trips everyone up

A "test the gameplay" attempt fails because the test can't wait for a frame. A
plain NUnit **`[Test]` is synchronous** — it returns before any frame, `Update`,
or physics step runs, so it asserts on frame-0 state and sees nothing happen.

PlayMode tests that need time to pass **must be `[UnityTest]` returning
`IEnumerator`** so they can `yield return null` to advance exactly one frame
(verbatim from `references/api/unitytest-attribute.md`):

```csharp
using System.Collections;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;

[UnityTest]
public IEnumerator CubeMovesDown()
{
    var cube = PrepareCube();
    var start = cube.transform.position;

    yield return null;                          // advance ONE frame

    Assert.That(cube.transform.position, Is.Not.EqualTo(start));
}
```

The other half of the gotcha is the **CLI + exit code**: you run the Editor
headless with `-runTests`, and the **exit code is the pass/fail signal** (0 =
passed, non-zero = failed/compile-error/crash). Two flags bite people:
**`-quit` is NOT supported during a test run** (the Editor exits itself), and
`-runSynchronously` silently *filters out* `[UnityTest]`/`[UnitySetUp]` tests.

```bash
scripts/run_tests.sh <projectPath> PlayMode results.xml ; echo "exit=$?"
# wraps: unity.sh -batchmode -nographics -runTests -projectPath <p> \
#                 -testPlatform PlayMode -testResults results.xml -logFile -
```

(Use `[Test]` for pure synchronous logic — the docs recommend it *unless* you
need to wait a frame or yield an Editor instruction.)

## EditMode vs PlayMode

UTF picks the mode from the test **assembly's references**, not a per-test
attribute (`references/api/edit-mode-vs-play-mode-tests.md`):

| | EditMode | PlayMode |
|---|---|---|
| Runs in | Editor only (`EditorApplication.update` loop) | Play mode, or a built **Player** (device/standalone) |
| Sees | `UnityEditor` + `UnityEngine` code | runtime code (`#if UNITY_EDITOR` in setup) |
| Coroutines | **No** | Yes — `[UnityTest]` runs as a coroutine |
| `[UnityTest]` yields | Editor instructions (`EnterPlayMode`…) | skip frames / wait (`yield return null`) |
| asmdef `includePlatforms` | `["Editor"]` | `[]` (or specific platforms for a Player) |
| CLI `-testPlatform` | `EditMode` (**default** if omitted) | `PlayMode`, or a `BuildTarget` to run on a Player |

## Verified assertion idioms

Use NUnit's `Assert` **inside tests** (`using NUnit.Framework;`). Constraint form
is preferred and appears verbatim across the embedded course pages
(`setup-teardown.md`, `unitytest-attribute.md`):

```csharp
Assert.That(files.Length, Is.EqualTo(1), "Expected one file.");
Assert.That(content,      Is.EqualTo(expectedContent));
Assert.That(m_Sprite,     Is.Null, "should be null");
Assert.That(transform.position, Is.Not.EqualTo(start));
Assert.AreEqual("Player", gameObject.tag);     // classic form also fine
```

Test what the code logs — UTF **fails a test if its code logs an error/exception**
unless you expect it first (`references/api/asserting-logs.md`):

```csharp
[Test]
public void DoSomethingElseLogsError()
{
    new MyLoggingClass().DoSomethingElse();
    LogAssert.Expect(LogType.Error, new Regex("An error happened. Code: \\d"));
}
```

Don't confuse this with `UnityEngine.Assertions.Assert` — that's a *runtime*
invariant check compiled out of release builds, **not** the test API
(`references/api/Assertions.Assert.md`). For comparing Color/Quaternion/Vector
within a tolerance, use the comparers in `UnityEngine.TestTools.Utils`.

`[SetUp]`/`[TearDown]` (per test) and `[OneTimeSetUp]`/`[OneTimeTearDown]` (per
fixture) remove duplication and guarantee cleanup; the Unity variants
`[UnitySetUp]`/`[UnityTearDown]` return `IEnumerator` so setup can yield. Details
+ verbatim examples in `references/test_framework.md`.

## The test assembly (asmdef) — UTF won't find tests without it

UTF only discovers tests in an assembly that references **`nunit.framework.dll` +
`UnityEngine.TestRunner` + `UnityEditor.TestRunner`** — "this combination of
references is what identifies an assembly as a test assembly"
(`references/api/workflow-create-test-assembly.md`). Modern form
(`references/api/assembly-definition-file-format.md`):

```jsonc
{
    "name": "Game.PlayTests",
    "references": [
        "UnityEngine.TestRunner",
        "UnityEditor.TestRunner",
        "Game.Runtime"            // your game code's asmdef — tests can't see Assembly-CSharp.dll
    ],
    "includePlatforms": [],       // [] = PlayMode; ["Editor"] = EditMode
    "overrideReferences": true,
    "precompiledReferences": ["nunit.framework.dll"],
    "autoReferenced": false,
    "defineConstraints": ["UNITY_INCLUDE_TESTS"]   // keeps tests OUT of release builds
}
```

Two rules that bite: a test assembly **cannot reference `Assembly-CSharp.dll`** —
the code under test must live in its own named asmdef (see `unity-project-setup`)
that the test asmdef references; and EditMode/PlayMode is set purely by
`includePlatforms`.

`scripts/new_playmode_test.sh <projectPath>` scaffolds exactly this: a
`[UnityTest] IEnumerator` PlayMode `.cs` (spawn a GameObject, `yield return null`,
assert) plus the matching test asmdef. Files only — it does not run Unity.

## Headless run, results.xml, and exit code

```bash
scripts/run_tests.sh <projectPath> [EditMode|PlayMode] [results.xml]
```

- `-testResults` writes **NUnit-format XML**; the `<test-run>` root carries
  `total`/`passed`/`failed`/`result` (`references/api/reference-command-line.md`).
  Parse it (or grep it) to report results; in CI feed it to a JUnit/NUnit
  reporter.
- **Exit code** drives CI: `0` = passed; non-zero = failures, an exception, a
  **compile error before tests ran**, or a crash. The docs are explicit that
  there's "no common definition for exit codes," so **always cross-check
  results.xml and the log** — *non-zero with no results.xml ⇒ a compile error*,
  not a test failure. `run_tests.sh` makes that distinction for you.
- Run PlayMode tests on real hardware by setting `-testPlatform` to a
  `BuildTarget` (`Android`, `StandaloneLinux64`, `PS4`, …) — UTF builds a Player
  and streams results back. This is the **Compliance Tester** path.
- Add `-enableCodeCoverage` + the Code Coverage package for a coverage report;
  the Performance Testing package adds `[Performance]` perf gates.

Full flag table, the `TestSettings.json` Player options, results.xml schema, and
a GameCI/GitHub-Actions CI sketch are in `references/cli_and_ci.md`.

## Verification & determinism (design for testability)

Tests are only as good as the state you can observe. Favor exported, queryable
state (an FSM `Current` enum from `unity-physics-and-ai`, score/health fields,
flags) over visual-only effects. For a PlayMode test, step time deterministically
by yielding `null` (one frame) or `new WaitForFixedUpdate()` (one physics step)
rather than relying on wall-clock. The cheapest "did I break the build" gate is a
smoke test that loads the main scene, runs a few frames, and asserts no error was
logged (UTF fails on unexpected error logs automatically) — wire that into Triage
(CLAUDE.md Phase 2) and the evaluator's regression check (Phase 7).

## Troubleshooting (top failures)

`references/troubleshooting.md` covers them in full: PlayMode test can't wait a
frame (used `[Test]` not `[UnityTest]`); tests not discovered (missing/
misconfigured test asmdef, wrong `includePlatforms` for the `-testPlatform`,
scripts not beside the asmdef); CLI non-zero with no failures (compile error — no
results.xml written); test fails on an unexpected logged error (use
`LogAssert.Expect`); "can't reference Assembly-CSharp" (move code to its own
asmdef); `-quit` ends the run early (don't pass it); confusing the two `Assert`
classes; and the expected **127** here (no Editor).

## What this covers / hands off to

Covers **QA Tester** and **Compliance Tester** work (`docs/team_roles/_main.md`).
Assumes a buildable project from **`unity-project-setup`** (which also owns the
gameplay-code asmdefs your tests reference). The code under test is built with
**`unity-gameplay-csharp`**, **`unity-physics-and-ai`**, **`unity-ui-csharp`**,
**`unity-graphics-shaders`**, **`unity-audio`**, **`unity-art-pipeline`**, and
**`unity-multiplayer`**. For packaging Player/device/dedicated-server builds (the
artifacts you run PlayMode tests on, and the export-compliance side of shipping),
hand to **`unity-build-deploy`**.

Depth: `references/test_framework.md` (writing tests), `references/cli_and_ci.md`
(headless runner + CI), `references/troubleshooting.md`, and the exhaustive
embedded pages in `references/api/`.
