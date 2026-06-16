# Unity Test Framework (UTF) — reference

Unity 6 (6000.x). Doc-sourced from the embedded pages under `references/api/`; not
compile-tested here (no Editor installed). Every claim below cites the page it
came from.

UTF is **NUnit + Unity extensions**. You write NUnit test classes; Unity adds the
`[UnityTest]` attribute, the `LogAssert` log check, Unity-type comparers, and the
EditMode/PlayMode split. Two test "modes", chosen by the test assembly's
references — see `references/api/edit-mode-vs-play-mode-tests.md`.

## EditMode vs PlayMode (the split)

| | EditMode tests | PlayMode tests |
|---|---|---|
| Runs in | Editor only, in the `EditorApplication.update` loop | The Editor's Play mode, or a built **Player** (standalone/device) |
| Sees | `UnityEditor` **and** `UnityEngine` code | runtime (`UnityEngine`) code; can use `#if UNITY_EDITOR` in setup |
| Coroutines | **No** coroutines | Yes — `[UnityTest]` runs as a coroutine |
| `[UnityTest]` use | yield *Editor* instructions (`EnterPlayMode`, etc.) | skip frames / wait time (`yield return null`) |
| asmdef `includePlatforms` | `["Editor"]` | `[]` (empty) — or specific platforms to run on a Player |
| asmdef must reference | `nunit.framework.dll` + `UnityEditor.TestRunner` | `nunit.framework.dll` (TestRunner refs too) |
| CLI `-testPlatform` | `EditMode` (the default if omitted) | `PlayMode`, or a `BuildTarget` to run on a Player |

Source: `references/api/edit-mode-vs-play-mode-tests.md`. UTF decides which mode a
test is purely from its **parent assembly's references** — there is no per-test
mode attribute.

## `[Test]` vs `[UnityTest]` — pick the right one

- **`[Test]`** (NUnit) — a normal synchronous method. Use it for pure logic:
  math, state machines, parsing, anything that doesn't need a frame to pass.
  The docs' explicit recommendation: *use `[Test]` unless you actually need to
  wait.* (`references/api/edit-mode-vs-play-mode-tests.md`, "Recommendations".)

- **`[UnityTest]`** (Unity) — returns **`IEnumerator`** so it can `yield`. This is
  the ONE thing that trips people up: a PlayMode test that needs a frame to pass
  (physics, `Update`, animation, coroutine-driven gameplay) **must** be
  `[UnityTest] IEnumerator` and `yield return null` to advance a frame. A plain
  `[Test]` asserts on frame 0 and sees nothing happen. Verbatim from
  `references/api/unitytest-attribute.md`:

  ```csharp
  [UnityTest]
  public IEnumerator MyTest()
  {
      DoSomething();
      yield return null;   // skip 1 frame
      DoSomethingElse();
  }
  ```

  And the canonical "did it move after a frame" assertion
  (`references/api/unitytest-attribute.md`):

  ```csharp
  [UnityTest]
  public IEnumerator CubeMovesDown()
  {
      var cubeUnderTest = PrepareCube();
      var initialPosition = cubeUnderTest.transform.position;

      yield return null;

      Assert.That(cubeUnderTest.transform.position, Is.Not.EqualTo(initialPosition));
  }
  ```

  You can also `yield return new WaitForSeconds(t)` (wall time),
  `yield return new WaitForFixedUpdate()` (one physics step), or, in **EditMode**
  tests, `yield return new EnterPlayMode()` / `new ExitPlayMode()` to drive Play
  mode (`references/api/reference-unitysetup-and-unityteardown.md` domain-reload
  example). EditMode tests cannot run coroutines but *can* yield these Editor
  instructions.

## Assertions

Two different `Assert` classes — don't confuse them:

1. **NUnit `Assert`** (`using NUnit.Framework;`) — what you use **inside tests**.
   - Classic form: `Assert.AreEqual(expected, actual)`, `Assert.IsTrue(x)`,
     `Assert.IsNull(x)`, `Assert.IsNotNull(x)`.
   - **Constraint form** (preferred, human-readable) via `Assert.That`, shown
     verbatim across the embedded course pages
     (`references/api/setup-teardown.md`, `unitytest-attribute.md`):
     ```csharp
     Assert.That(files.Length, Is.EqualTo(1), "Expected one file.");
     Assert.That(content,      Is.EqualTo(expectedContent));
     Assert.That(m_Sprite,     Is.Null, "should be null");
     Assert.That(pos,          Is.Not.EqualTo(initialPosition));
     Assert.That(go.transform.position.y, Is.LessThan(start.y));
     ```
   - **Unity constraint extension**: UTF adds a custom constraint and overlays an
     `Is` class. To use it you must explicitly `using
     UnityEngine.TestTools.Constraints;` (or the full type name
     `UnityEngine.TestTools.Constraints.Is`) to disambiguate from NUnit's `Is`.
     Source: `references/api/asserting-and-comparing.md`.
   - **Comparing Unity types** (Color, Quaternion, Vectors) within a tolerance:
     use the comparers in `UnityEngine.TestTools.Utils` — call `.Instance` for the
     default tolerance or `new XxxComparer(error)` for a custom one.
     Source: `references/api/asserting-and-comparing.md`.

2. **`UnityEngine.Assertions.Assert`** (`using UnityEngine.Assertions;`) — runtime
   invariant checks for *production* MonoBehaviour code, NOT test assertions. It
   throws `AssertionException` and is compiled out of non-development builds
   unless `UNITY_ASSERTIONS` / `BuildOptions.ForceEnableAssertions` is set.
   Methods: `AreEqual`, `AreNotEqual`, `AreApproximatelyEqual`, `IsTrue`,
   `IsFalse`, `IsNull`, `IsNotNull`. Source:
   `references/api/Assertions.Assert.md`, `Assertions.Assert.AreEqual.md`. Use
   this for in-code guards, not for your test bodies.

### `LogAssert` — testing what the code logs

A test **fails automatically** if the code under test logs an *error or
exception* (anything beyond a regular Log/Warning). To assert that an expected
error/log *is* produced (and stop it failing the test), use `LogAssert.Expect`
before the code runs — the check runs at the end of each frame. Verbatim from
`references/api/asserting-logs.md`:

```csharp
[Test]
public void LogAssertExample()
{
    LogAssert.Expect(LogType.Log, "Log message");
    Debug.Log("Log message");                 // fails if this is missing

    Debug.LogError("Error message");
    LogAssert.Expect(LogType.Error, "Error message");   // else the test fails
}
```

`LogAssert.Expect` also accepts a `Regex` when the exact string isn't known
(`new Regex("An error happened. Code: \\d")`). Source:
`references/api/asserting-logs.md`.

## SetUp / TearDown

NUnit's `[SetUp]` runs before **each** test, `[TearDown]` after each; `[OneTimeSetUp]`
/ `[OneTimeTearDown]` run once per fixture. Use them to remove duplication and
guarantee cleanup even when a test fails. Verbatim from
`references/api/setup-teardown.md`:

```csharp
public class TestClass
{
    [SetUp]    public void MySetUp()    { Directory.CreateDirectory(Dir); }
    [Test]     public void MyFirstTest()  { /* ... */ }
    [Test]     public void MySecondTest() { /* ... */ }
    [TearDown] public void MyTearDown()  { Directory.Delete(Dir, true); }
}
```

**Unity variants** (`references/api/reference-unitysetup-and-unityteardown.md`):
`[UnitySetUp]` / `[UnityTearDown]` / `[UnityOneTimeSetUp]` /
`[UnityOneTimeTearDown]` are the same idea but **return `IEnumerator`** so setup
itself can yield Unity/Editor instructions (e.g. wait a frame, enter Play mode).
Order: base-class SetUp runs before derived; TearDown is reversed.

**Build-time** setup/cleanup for PlayMode tests run on a Player: implement
`IPrebuildSetup` / `IPostBuildCleanup` (or the `[PrebuildSetup("ClassName")]` /
`[PostBuildCleanup(...)]` attributes). Wrap Editor-only API in `#if UNITY_EDITOR`.
Source: `references/api/reference-setup-and-cleanup.md`.

## Other useful attributes

- **Parameterized tests**: NUnit `[TestCase(arg, ...)]` on a `[Test]` for
  data-driven cases. See `references/api/reference-tests-parameterized.md` and
  `test-cases.md`.
- **Async tests**: UTF supports `async Task` test methods (the .NET Task model).
  See `references/api/reference-async-tests.md`.
- **Custom yield instructions** for `[UnityTest]`: implement
  `IEditModeTestYieldInstruction` / custom yields. See
  `references/api/reference-custom-yield-instructions.md`.
- **Categories**: NUnit `[Category("...")]`, runnable selectively with the CLI
  `-testCategory` flag (`references/api/reference-command-line.md`).

## The test assembly (asmdef) — non-negotiable setup

UTF only finds tests in a **test assembly**: an `.asmdef` that references NUnit
plus the TestRunner assemblies. The Editor's *Create > Testing > Test Assembly
Folder* generates one with references to `nunit.framework.dll`,
`UnityEngine.TestRunner`, and `UnityEditor.TestRunner` — **"this combination of
references is what identifies an assembly as a test assembly"**
(`references/api/workflow-create-test-assembly.md`).

Modern asmdef form (from `references/api/assembly-definition-file-format.md`,
fields verbatim):

```jsonc
{
    "name": "Game.PlayTests",
    "references": [
        "UnityEngine.TestRunner",
        "UnityEditor.TestRunner",
        "Game.Runtime"               // <-- your game code's asmdef, so tests can see it
    ],
    "includePlatforms": [],          // [] = PlayMode; ["Editor"] = EditMode
    "excludePlatforms": [],
    "overrideReferences": true,
    "precompiledReferences": [
        "nunit.framework.dll"        // pulls in NUnit
    ],
    "autoReferenced": false,
    "defineConstraints": [
        "UNITY_INCLUDE_TESTS"        // keeps the test assembly OUT of release builds
    ]
}
```

Rules that bite people (`references/api/edit-mode-vs-play-mode-tests.md`,
`cus-tests.md`):

- A test assembly **cannot reference the predefined `Assembly-CSharp.dll`.** Your
  game code must live in its **own** asmdef that the test asmdef references —
  otherwise the test can't see the code under test. (This is why
  `unity-project-setup` puts gameplay code in named asmdefs.)
- Test scripts must sit **next to** their `.asmdef`.
- `EditMode` = `includePlatforms: ["Editor"]`; `PlayMode` =
  `includePlatforms: []`.
- `UNITY_INCLUDE_TESTS` in `defineConstraints` means the assembly only compiles
  when test support is active, so it's stripped from shipped builds.
- An older asmdef form used `"optionalUnityReferences": ["TestAssemblies"]`
  instead of explicit TestRunner references; you may see it in legacy projects
  and the package docs (`references/api/cus-tests.md`). Prefer the explicit-
  references form above for new assemblies.
- Testing a **UPM package** outside `Packages/`? Add it to the project
  manifest's `"testables": [...]` array (`references/api/cus-tests.md`).

`scripts/new_playmode_test.sh` scaffolds exactly this: a `[UnityTest]` PlayMode
`.cs` plus a matching test asmdef.

## Running tests programmatically (in-Editor)

Beyond the CLI, the **`TestRunnerApi`** lets you list, run, and collect results
from C# (e.g. from a `MenuItem` or a build script): construct `ExecutionSettings`
with a `Filter`, call `RunTests`, and register callbacks
(`ITestRunnerCallbacks`/`ICallbacks`) to receive `ITestResultAdaptor`. Use the
`Filter` to scope by assembly, category, or test name. Source:
`references/api/running-tests-from-code.md`,
`references/api/running-tests-programmatically.md`. For headless CI, the
command-line runner (next file) is simpler — reach for `TestRunnerApi` when you
need custom orchestration inside the Editor.

## See also

- `references/cli_and_ci.md` — headless `-runTests` invocation, results.xml, exit
  codes, CI.
- `references/troubleshooting.md` — the handful of failures that account for most
  wasted time.
- `references/api/` — the exhaustive embedded pages this guide cites.
