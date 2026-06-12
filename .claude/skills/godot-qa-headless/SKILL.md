---
name: godot-qa-headless
description: >
  Test, verify, and quality-check a Godot 4.6 C# game from the command line —
  no GUI. Use this whenever you need to run automated tests on game logic, set up
  a headless test harness (a SceneTree/Node test runner or GdUnit4), verify a
  feature actually works by running it and asserting on state/stdout, wire Godot
  tests into CI with a pass/fail exit code, take headless screenshots, check for
  console errors/warnings, or do platform-compliance checks before shipping.
  Reach for it any time the task is "write tests for this", "verify this feature
  works", "does the enemy actually chase", "run it headless and check", "add a CI
  test step", "make sure there are no errors on load", or "QA this build". It has
  the verified headless run + exit-code pattern and the GdUnit4 setup. Covers QA
  Tester and Compliance Tester work. Assumes a buildable project
  (godot-project-setup); the thing under test is built with the other godot-* skills.
---

# Godot QA / Headless Testing (C#)

Verify a Godot game without a human or a display. Two jobs: **automated tests**
(assert on game logic) and **verification** (run the real game, observe it
behaves). Both run through `godot --headless` and report a pass/fail **exit
code** that CI can branch on.

## The core mechanism (verified)

A test is a scene whose script sets up state, asserts, and quits with an exit
code. `GetTree().Quit(0)` = pass, `Quit(1)` = fail. Run it headless and check
`$?`:

```csharp
public partial class TestRunner : Node
{
    public override void _Ready()
    {
        int failures = 0;
        var enemy = ... ; enemy._PhysicsProcess(0.016);   // step a frame
        if (enemy.Current != Enemy.State.Chase) { GD.PrintErr("FAIL: not chasing"); failures++; }

        GD.Print(failures == 0 ? "TESTS PASSED" : $"TESTS FAILED: {failures}");
        GetTree().Quit(failures);   // exit code = failure count (0 = pass)
    }
}
```

```bash
scripts/godot.sh --headless --path <dir> res://tests/MyTest.tscn ; echo "exit=$?"
```

This pattern is the backbone — it needs no test framework and is proven to work
headless. `scripts/run_tests.sh` wraps it: builds, imports, runs every
`res://tests/*.tscn`, aggregates exit codes, returns non-zero on any failure.
Full patterns (stepping physics frames, awaiting signals, asserting on game
state, scanning stdout for `ERROR`) are in `references/headless_testing.md`.

## When to use GdUnit4 instead

For a real assertion API (`AssertThat(...).IsEqual(...)`), test discovery, and
nicer reports, add **GdUnit4** (a NuGet package + addon). Use it when the test
suite grows beyond a handful of hand-rolled runners. The reference has the
`<PackageReference>`, the `[TestSuite]`/`[TestCase]` C# attributes, and the
headless CLI invocation. The hand-rolled runner above is fine for quick checks
and the vertical-slice gate; GdUnit4 is for a maintained suite.

## Verification (does the feature actually work?)

Beyond unit tests: run the actual game scene for N frames and assert it didn't
error and reached an expected state.

```bash
# Run the real main scene briefly; fail if any ERROR appears in stdout.
scripts/godot.sh --headless --path <dir> --quit-after 30 2>&1 | tee /tmp/run.log
grep -q "ERROR" /tmp/run.log && { echo "errors on run"; exit 1; } || echo "clean run"
```

`scripts/check_run.sh <dir> [scene]` does this: runs the scene, greps for
`ERROR`/`SCRIPT ERROR`, and fails on any. This is the cheapest "did I break the
build" gate — wire it into Triage (CLAUDE.md Phase 2) and the evaluator's
regression check (Phase 7).

## Headless screenshots (visual verification)

`--headless` can't render to a real framebuffer for screenshots directly, but you
can capture a viewport image from a script via `GetViewport().GetTexture().GetImage().SavePng(...)`
during a short run, or run non-headless with an offscreen display
(`xvfb-run`). Patterns + the Playwright option (for web-embedded builds) are in
`references/headless_testing.md`.

## Compliance checks

Pre-ship mechanical checks: no console errors on boot, project exports cleanly
for each target preset (hand off to `godot-export-build`), required files
present, input map defines expected actions, no missing-resource warnings.
`references/compliance.md` lists the checklist and how to automate each item
headlessly.

## Determinism — design for testability

Tests are only as good as the state you can observe. Favor exported, queryable
state (the FSM `Current` enum from `godot-physics-and-ai`, score fields, flags)
over visual-only effects. Step `_PhysicsProcess(delta)` manually for fixed-step
determinism instead of waiting on wall-clock frames.

## Troubleshooting

`references/headless_testing.md` troubleshooting: test scene "no main scene"
(pass the scene path as an arg, not main_scene), exit code always 0 (forgot to
`Quit(failures)` or used the wrong overload), C# class-not-found on run (build
before running so the source generator + assembly exist), GdUnit4 not discovered
(addon not enabled / wrong CLI path), screenshot is black (ran fully headless —
use xvfb or capture via viewport image).
