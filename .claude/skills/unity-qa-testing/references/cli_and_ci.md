# Headless test runner, results.xml, exit codes, CI

Unity 6 (6000.x). Doc-sourced from `references/api/`; not compile-tested here (no
Editor installed — `scripts/unity.sh` exits 127). Citations inline.

## The command-line test run

The Unity Editor runs UTF tests in batch mode. Canonical invocation, verbatim
from `references/api/run-tests-from-command-line.md`:

```
Unity.exe -runTests -batchmode -projectPath PATH_TO_YOUR_PROJECT \
          -testResults C:\temp\results.xml -testPlatform PS4
```

Through this skill's wrapper (`scripts/unity.sh`, a copy of `_tools/unity.sh`):

```bash
scripts/unity.sh -batchmode -nographics -runTests \
  -projectPath <proj> -testPlatform PlayMode \
  -testResults <results.xml> -logFile -
# or simply:  scripts/run_tests.sh <proj> PlayMode <results.xml>
```

### The UTF command-line flags (`references/api/reference-command-line.md`)

| Flag | Meaning |
|---|---|
| `-runTests` | Run tests in the project. (Required to enter test mode.) |
| `-testPlatform <X>` | `EditMode` (default if omitted), `PlayMode` (in-Editor), or a `BuildTarget` enum value (build a Player and run PlayMode tests on it). |
| `-testResults <path>` | Where to write the NUnit-format XML result file. Default: project root. |
| `-assemblyNames "a;b"` | Only run these test assemblies (quoted, `;`-separated). |
| `-testFilter "Ns.Class.Test"` | Run tests matching names / regex; supports `!` negation. |
| `-testCategory "cat1;cat2"` | Run tests in these `[Category]` values; supports `!` negation. |
| `-runSynchronously` | Run all in one Editor update. **EditMode only** — it *filters out* `[UnityTest]`, `[UnitySetUp]`, `[UnityTearDown]` (they need multiple frames). |
| `-repeat N` / `-retry N` | Repeat passing tests / retry failing tests up to N times. |
| `-orderedTestListFile` / `-randomOrderSeed` | Control test order. |
| `-playerHeartbeatTimeout` | Seconds the Editor waits for a Player's heartbeats (default 10 min). |
| `-testSettingsFile <TestSettings.json>` | Player build settings (scripting backend, graphics API, WebGL browser, feature flags). |

General Editor batch flags you pair with these
(`references/api/EditorCommandLineArguments.md`):

| Flag | Meaning |
|---|---|
| `-batchmode` | No human interaction, no dialogs. **On an exception / failed operation, Unity exits with return code `1`.** Always use it for CI. |
| `-nographics` | Don't init the GPU — runs on headless/GPU-less CI. **Turns off log output unless you also pass `-logFile`.** Cannot bake GI. |
| `-logFile -` | Send the full log to stdout (`-` = stdout). Essential under `-nographics`. |
| `-projectPath <dir>` | The project to open. |

### Two flags that MUST NOT appear in a test run

- **`-quit` is NOT supported while tests are running**
  (`references/api/reference-command-line.md`, explicit Note). The Editor exits
  by itself when the run completes. Adding `-quit` can terminate before results
  are written. `scripts/run_tests.sh` deliberately omits it.
- Don't combine `-runSynchronously` with PlayMode / `[UnityTest]` — those tests
  get filtered out and silently won't run.

## results.xml — the NUnit result file

`-testResults` writes XML in **NUnit's format**
(`references/api/reference-command-line.md`). The root `<test-run>` element
carries the summary counts:

```xml
<test-run id="..." testcasecount="12" result="Failed"
          total="12" passed="10" failed="2" skipped="0" ...>
  <test-suite ...>
    <test-case name="Game.PlayTests.SmokeTest.FallingBody_MovesDown_AfterOneFrame"
               result="Passed" .../>
    <test-case name="..." result="Failed">
      <failure><message>...</message><stack-trace>...</stack-trace></failure>
    </test-case>
  </test-suite>
</test-run>
```

Parse `result="..."`, `total`, `passed`, `failed` to report pass/fail to a human
or a dashboard. `scripts/run_tests.sh` greps these counts. For real parsing in
CI, use any NUnit-XML consumer (e.g. JUnit/NUnit reporters in GitHub Actions /
Jenkins). The full schema is Unity's "Test Result XML Format" / the NUnit 3 XML
spec.

## Exit codes — the pass/fail signal (with a caveat)

The exit code is what CI branches on:

- **`0`** — the test run completed and (in practice) all tests passed.
- **non-zero (usually `1`)** — failures, an uncaught exception, a **compile
  error before tests ran**, a license/activation problem, or a crash.
  `-batchmode` returns `1` on any exception/failed operation
  (`references/api/EditorCommandLineArguments.md`).

**Honest caveat, straight from the docs**
(`references/api/reference-command-line.md`):

> "There is currently no common definition for exit codes reported by individual
> Unity components under test. The best way to understand the source of a problem
> is the content of error messages and stack traces."

So: **treat non-zero as "investigate", and always cross-check the results.xml and
the log.** A non-zero exit **with no results.xml** almost always means a compile
error (tests never started) rather than a test assertion failure — distinguish
the two before reporting. `scripts/run_tests.sh` makes exactly this distinction.

## PlayMode tests on a real Player (device/standalone)

Set `-testPlatform` to a `BuildTarget` (e.g. `StandaloneLinux64`, `Android`,
`PS4`) instead of `PlayMode`. UTF builds a Player containing the tests, runs
them, and streams results back to the Editor over the heartbeat connection
(tune with `-playerHeartbeatTimeout`). PlayMode test assemblies that target a
Player must set `includePlatforms` accordingly (or `Any Platform`)
(`references/api/workflow-create-test-assembly.md`,
`edit-mode-vs-play-mode-tests.md`). `TestSettings.json` (via `-testSettingsFile`)
controls the Player's scripting backend, graphics API, and (for WebGL) the
browser. This is the path for **Compliance Tester** work on target hardware.

## CI integration (sketch)

A minimal CI test step:

```bash
# 1. run tests headless; capture exit code; DO NOT pass -quit
scripts/run_tests.sh "$PROJECT" PlayMode "$PWD/results.xml"
CODE=$?

# 2. always publish the NUnit XML (so failures show even on a green-ish exit)
#    e.g. GitHub Actions: actions/upload-artifact + an NUnit/JUnit reporter.

# 3. fail the job on non-zero exit OR any result="Failed" in the XML
if [ "$CODE" -ne 0 ] || grep -q 'result="Failed"' results.xml; then
  echo "tests failed"; exit 1
fi
```

Practical CI notes:

- Use a CI-oriented Unity license (`-serial` + `-batchmode`, or the personal
  license activation flow). Activation failures also surface as non-zero exits.
- Run on a runner with the matching Unity 6 Editor + the needed build-support
  modules (for Player/device test platforms).
- The community **GameCI** GitHub Actions (`game-ci/unity-test-runner`) wrap all
  of the above (license, `-runTests`, NUnit→JUnit, artifact upload) and are the
  usual production path; the flags they pass are the ones documented here.
- **Code coverage**: add `-enableCodeCoverage` in batch mode and use the Code
  Coverage package (`com.unity.testtools.codecoverage`) to gather a report of
  which lines your tests executed (`references/api/TestTools.Coverage.md`,
  `com.unity.testtools.codecoverage.md`). Coverage measures reach, not test
  quality.
- **Performance regressions**: the Performance Testing package
  (`com.unity.test-framework.performance`, package 3.5.0 for Editor 6000.4 —
  `references/api/com.unity.test-framework.performance.md`) adds `[Performance]`
  measurement to UTF for CI perf gates.

## In this environment

`scripts/run_tests.sh` and `scripts/unity.sh` exit **127** with install
instructions because no Unity 6 Editor is installed here. That is expected and
is **not** a test failure. Install Unity 6 (6000.x) via Unity Hub and
`export UNITY_PATH=/path/to/Hub/Editor/6000.x.y/Editor/Unity` to run tests for
real.

## See also

- `references/test_framework.md` — writing the tests (`[UnityTest]`, asserts,
  asmdef).
- `references/troubleshooting.md` — the common failure modes.
- `references/api/reference-command-line.md`, `run-tests-from-command-line.md`,
  `EditorCommandLineArguments.md` — the source pages.
