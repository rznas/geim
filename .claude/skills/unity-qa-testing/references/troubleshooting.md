# Troubleshooting — Unity Test Framework

Unity 6 (6000.x). The handful of failures that account for most wasted time when
testing a Unity game headless. Doc-sourced from `references/api/`; not
compile-tested here.

---

### 1. A PlayMode test can't wait for a frame / physics step (THE #1 failure)

**Symptom:** "Test the gameplay" attempt fails — the object hasn't moved, the
Rigidbody hasn't fallen, the coroutine hasn't progressed, the animation hasn't
played. The assert runs but sees frame-0 state.

**Cause:** the test is a plain `[Test]`, which is **synchronous** and returns
before any frame, `Update`, or physics step runs.

**Fix:** make it a `[UnityTest]` returning **`IEnumerator`** and `yield` to
advance time:

```csharp
[UnityTest]
public IEnumerator CubeMovesDown()
{
    var cube = PrepareCube();
    var start = cube.transform.position;
    yield return null;                         // advance ONE frame
    Assert.That(cube.transform.position, Is.Not.EqualTo(start));
}
```

Other yields: `yield return new WaitForSeconds(t)` (wall time),
`yield return new WaitForFixedUpdate()` (one physics step), or several
`yield return null` in a loop. Only `[UnityTest]` (PlayMode) can do this; a plain
`[Test]` cannot. Source: `references/api/unitytest-attribute.md`,
`edit-mode-vs-play-mode-tests.md`. Note `-runSynchronously` *filters out*
`[UnityTest]` — don't use it for these.

---

### 2. Tests are not discovered / "no tests found"

**Symptom:** the run reports 0 tests, or the Test Runner window is empty, or the
CLI exits 0 having run nothing.

**Causes & fixes** (`references/api/workflow-create-test-assembly.md`,
`edit-mode-vs-play-mode-tests.md`, `cus-tests.md`):

- **No / misconfigured test asmdef.** UTF only finds tests in an assembly that
  references **`nunit.framework.dll` + `UnityEngine.TestRunner` +
  `UnityEditor.TestRunner`** — "this combination of references is what identifies
  an assembly as a test assembly." Without it, your `[Test]` methods are
  invisible. Scaffold one with `scripts/new_playmode_test.sh`, or check the
  asmdef's `precompiledReferences` includes `nunit.framework.dll`.
- **Wrong mode for the CLI flag.** EditMode tests need `includePlatforms:
  ["Editor"]`; PlayMode need `includePlatforms: []`. If you run
  `-testPlatform PlayMode` but the asmdef targets `["Editor"]`, those tests are
  EditMode and won't run in the PlayMode set (and vice-versa). Remember
  `-testPlatform` **defaults to EditMode** if omitted.
- **Test scripts not next to the asmdef.** Test `.cs` files must live in the same
  folder tree as their `.asmdef`.
- **`UNITY_INCLUDE_TESTS` define constraint** present but test support not active
  in the run context — the assembly is constrained out. (It should compile under
  `-runTests`.)
- **Filter too narrow.** A `-testFilter` / `-testCategory` / `-assemblyNames` that
  matches nothing runs nothing. Drop the filter to confirm discovery.
- **UPM package outside `Packages/`** not listed in the project manifest's
  `"testables"` array → its tests are skipped.

---

### 3. CLI returns non-zero but no test actually failed (compile error)

**Symptom:** `run_tests.sh` exits non-zero, but the results say nothing failed —
or **no results.xml was written at all**.

**Cause:** a **compile error** stopped the test build before any test ran. In
`-batchmode`, Unity exits with `1` on the exception; the docs warn there is "no
common definition for exit codes" (`references/api/reference-command-line.md`),
so a non-zero code alone doesn't tell you it was a test failure.

**Fix:** read the log (always pass `-logFile -`) for `error CS####`. Then:
- **No results.xml + non-zero** ⇒ almost always a compile error (or license /
  crash before tests started) — fix the compile first.
- **results.xml present with `result="Failed"`** ⇒ a genuine test failure.

`scripts/run_tests.sh` already distinguishes these and tells you which.

---

### 4. The test fails because the code logged an error/exception

**Symptom:** the test fails with an unexpected-log message even though the
assertions passed.

**Cause:** UTF fails any test whose code under test logs an **error or
exception** that wasn't expected (`references/api/asserting-logs.md`,
`asserting-and-comparing.md`).

**Fix:** if the error is expected, declare it *before* the code runs:

```csharp
LogAssert.Expect(LogType.Error, "Error message");        // exact string
LogAssert.Expect(LogType.Error, new Regex("Code: \\d")); // or a regex
```

If the error is *not* expected, that's the bug — fix the production code. (The
`LogAssert.Expect` check runs at the end of the frame, so place it before the
logging happens.)

---

### 5. "Test assembly can't reference Assembly-CSharp" / test can't see my class

**Symptom:** the test won't compile, or can't find your game type.

**Cause:** a test assembly **cannot reference the predefined
`Assembly-CSharp.dll`** (`references/api/edit-mode-vs-play-mode-tests.md`). If
your game code lives in the default `Assembly-CSharp` (no asmdef), the test
assembly cannot reach it.

**Fix:** move the code under test into its own named `.asmdef` (see
`unity-project-setup`), then add that asmdef's name to the test asmdef's
`"references"` array.

---

### 6. EditMode test tries to run a coroutine / `WaitForSeconds`

**Symptom:** an EditMode `[UnityTest]` hangs or the wait never completes.

**Cause:** EditMode tests run in the `EditorApplication.update` loop and
**cannot run coroutines** (`references/api/edit-mode-vs-play-mode-tests.md`).
`WaitForSeconds` / `WaitForFixedUpdate` are runtime yield instructions.

**Fix:** put time-dependent / physics / gameplay tests in **PlayMode**. In
EditMode, `[UnityTest]` may only yield *Editor* instructions (e.g.
`new EnterPlayMode()` / `new ExitPlayMode()`, which cause a domain reload — see
`references/api/reference-unitysetup-and-unityteardown.md`).

---

### 7. `-quit` makes the run end early / no results

**Symptom:** the run terminates before finishing or writes no results.

**Cause:** **`-quit` is not supported during a test run**
(`references/api/reference-command-line.md`). The Editor exits on its own when
the run completes.

**Fix:** remove `-quit`. (`scripts/run_tests.sh` never passes it.)

---

### 8. Confusing the two `Assert` classes

**Symptom:** assertions silently compiled out, or wrong namespace errors.

**Cause:** `UnityEngine.Assertions.Assert` is a **runtime** invariant check
compiled out of non-development builds (gated by `UNITY_ASSERTIONS`); it is *not*
the test assertion API (`references/api/Assertions.Assert.md`).

**Fix:** inside tests, `using NUnit.Framework;` and use NUnit's `Assert` /
`Assert.That(...)`. Reserve `UnityEngine.Assertions.Assert` for production guard
code. If you use the Unity constraint extension, add
`using UnityEngine.TestTools.Constraints;` to disambiguate the `Is` class
(`references/api/asserting-and-comparing.md`).

---

### 9. No editor here → exit code 127

**Symptom:** `scripts/run_tests.sh` / `scripts/unity.sh` print "no Unity 6 Editor
found" and exit **127**.

**Cause:** no Unity Editor is installed in this environment (by design — these
skills are doc-sourced, not compile-tested).

**Fix:** install Unity 6 (6000.x) via Unity Hub, then
`export UNITY_PATH=/path/to/Hub/Editor/6000.x.y/Editor/Unity`. 127 is expected
here and is **not** a test failure.

---

### 10. results.xml not written

**Symptom:** the run finished (or seemed to) but `-testResults` produced no file.

**Causes/fixes:**
- A **compile error** before tests ran (see #3) — read the log.
- A bad / unwritable `-testResults` path — use an absolute path to a writable
  dir.
- Passed `-quit` and the Editor exited before writing (see #7).
- Under `-nographics` with no `-logFile`, you also lost the log — add
  `-logFile -` so you can see *why*.

---

## See also

- `references/test_framework.md` — how to write tests correctly.
- `references/cli_and_ci.md` — the headless runner, results.xml, exit codes.
- `references/api/` — the exhaustive embedded source pages.
