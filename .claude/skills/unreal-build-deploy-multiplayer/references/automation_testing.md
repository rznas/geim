# Automation Testing & Profiling (UE 5.6/5.7)

The Automation Test Framework (headless C++ tests) and Unreal Insights
(profiling). Doc-sourced from `references/api/` (Testing_and_Optimizing_Your_Content),
not run here (no engine).

Primary source pages:
- `...Automation_Test_Framework_Create_Automation_Tests_Write_C++_Tests.md`
- `...Automation_Test_Framework_Create_Automation_Tests_Automation_Spec.md`
- `...Automation_Test_Framework_Run_Automation_Tests.md`
- `...Automation_Test_Framework_Configure_Automation_Tests.md`
- `...Automation_Test_Framework_Create_Automation_Tests_Functional_Testing.md`
- `...Automation_Test_Framework_Gauntlet_Automation_Framework*.md`
- `...Low-Level_Tests*.md`, `...Unreal_Insights*.md`

## The framework in one paragraph

Automation Tests are the lowest level of UE's automated testing — C++ classes
declared by macros, living **outside** the `UObject`/reflection/Blueprint world.
They're discovered by the editor's Session Frontend and, crucially, runnable
**headless from the command line** so they can gate CI. Put them in
`Private/Tests/`, named `[ClassFilename]Test.cpp` (a test for `FText` →
`TextTest.cpp`).

## Test types

### Simple test — one atomic unit/feature test

```cpp
IMPLEMENT_SIMPLE_AUTOMATION_TEST(FPlaceholderTest,
    "TestGroup.TestSubgroup.Placeholder Test",      // dotted path shown in UI
    EAutomationTestFlags::EditorContext | EAutomationTestFlags::EngineFilter)

bool FPlaceholderTest::RunTest(const FString& Parameters)
{
    // assert helpers from FAutomationTestBase: TestTrue/TestEqual/TestNotNull/...
    TestTrue(TEXT("two plus two"), 2 + 2 == 4);
    return true;   // true = passed, false = failed
}
```
Macro params (same for both macros): `TClass` (generated class name), `PrettyName`
(dotted UI path), `TFlags` (`EAutomationTestFlags` — context + filter).

### Complex test — same logic over many inputs

Override `GetTests` (fills parallel `OutBeautifiedNames` / `OutTestCommands`
arrays); each command string is fed to `RunTest` as `Parameters`. Good for "load
all maps", "compile all Blueprints":

```cpp
IMPLEMENT_COMPLEX_AUTOMATION_TEST(FLoadAllMapsInGameTest, "Maps.LoadAllInGame", ATF_Game)

void FLoadAllMapsInGameTest::GetTests(TArray<FString>& OutBeautifiedNames,
                                      TArray<FString>& OutTestCommands) const
{
    // ... enumerate inputs, push name + command per data point ...
}
bool FLoadAllMapsInGameTest::RunTest(const FString& Parameters)
{
    FString MapName = Parameters;        // one data point
    FEngineAutomationTestUtilities::LoadMap(MapName);
    ADD_LATENT_AUTOMATION_COMMAND(FEnqueuePerformanceCaptureCommands());
    return true;
}
```

### Spec — BDD `Describe`/`It` style

Self-documenting, less brittle (tests the public API, not the implementation).
File ext `.spec.cpp`, **no "Test" in the name**.

```cpp
DEFINE_SPEC(FMyServiceSpec, "MyGame.MyService",
    EAutomationTestFlags::ProductFilter | EAutomationTestFlags::ApplicationContextMask)

void FMyServiceSpec::Define()
{
    Describe("Health", [this]()
    {
        It("clamps to zero", [this]() { TestEqual(TEXT("clamped"), Clamp(-5), 0); });
    });
}
// Use BEGIN_DEFINE_SPEC / END_DEFINE_SPEC instead if the spec needs members.
// Supports BeforeEach/AfterEach; implement Define(), not RunTest().
```

### Latent commands (multi-frame)

When a step can't finish in one frame (map load in-game, streaming, async source
control), queue a **latent command** so the test spans frames:

```cpp
DEFINE_LATENT_AUTOMATION_COMMAND(FNUTWaitForUnitTests);
bool FNUTWaitForUnitTests::Update()   // return true => done; false => retry next frame
{
    return GUnitTestManager == NULL || !GUnitTestManager->IsRunningUnitTests();
}
// In RunTest:
ADD_LATENT_AUTOMATION_COMMAND(FNUTWaitForUnitTests());
ADD_LATENT_AUTOMATION_COMMAND(FEngineWaitLatentCommand(2.0f));
```
`DEFINE_LATENT_AUTOMATION_COMMAND_ONE_PARAMETER(Name, ParamType, ParamName)` for
a parameterized command.

## Running tests headless (the CI gate)

Pass `-ExecCmds` to the editor (or client) executable — drive it through
`scripts/unreal.sh editor`:

```bash
scripts/unreal.sh editor /abs/MyGame.uproject \
    -ExecCmds="Automation RunTest TestGroup.TestSubgroup;Quit" \
    -unattended -nullrhi -nosplash -nopause \
    -ReportExportPath=/abs/out/test-report \
    -log
```
`-ExecCmds` forms (from the api page):
- `"Automation RunTest Test1+Test2;Quit"` — run named tests, then quit.
- `"Automation RunTest MySet.MySubSet;Quit"` — run everything under a section.
- `"Automation RunTest Group:MyGroup;Quit"` — run a configured group.

Useful flags: `-nullrhi` (no GPU — headless CI), `-unattended`/`-nopause` (no
prompts), `-ReportExportPath="<dir>"` (JSON + HTML results), `-ResumeRunTest`
(with a report path, resume after a critical failure; in-progress tests count as
failures). In this environment `unreal.sh` exits 127 (no engine) — wire the real
run into CI once `UE_ROOT` is set, and key the gate off the exit code / report.

> Tests also run from the editor (Tools → Test Automation → Session Frontend) and
> can be driven across additional editor/client instances for **network tests**
> (start instances via Quick Launch, select them under My Sessions).

## Other test tooling (grep the api pages)

- **Functional Testing** — in-level functional tests
  (`...Create_Automation_Tests_Functional_Testing.md`).
- **Gauntlet** — full session/device automation (build, deploy, run on a target,
  drive with a Gauntlet Controller): `...Gauntlet_Automation_Framework*.md`.
- **Low-Level Tests (LLT)** — Catch2-based tests built/run outside the editor:
  `...Low-Level_Tests*.md`.
- **Configure / Report** — test groups & filters
  (`...Configure_Automation_Tests.md`), report server
  (`...Setting_up_an_Automation_Test_Report_Server.md`), screenshot comparison.

## Profiling: Unreal Insights

The modern profiler — captures a trace, viewed in the Insights tool:
- **Timing Insights** — CPU/GPU frame timing, the Frames panel, timers/counters.
- **Memory Insights**, **Networking Insights** (replication/RPC bandwidth — pairs
  with `references/replication_and_rpcs.md`), **Slate Insights**.
Start a trace with the `-trace=` channels arg or the in-editor Trace control; see
`...Unreal_Insights.md`, `...Unreal_Insights_Trace*.md`,
`...Unreal_Insights_Reference.md`. Lower-level/legacy: `stat` commands
(`...Stat_Commands.md`), the network profiler/emulation under
`...Networking_and_Multiplayer_Testing,_Debugging,_and_Optimization_*`. Shipping
perf prep also covers **PSO caches** (`...PSO_Caches*.md`) and **Oodle**
compression (`...Using_Oodle*.md`).
