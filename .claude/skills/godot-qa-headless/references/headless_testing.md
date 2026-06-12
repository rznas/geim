# Headless testing patterns (Godot 4.6, C#)

## The hand-rolled test scene (verified)

A `Node` script that asserts in `_Ready` and quits with an exit code. No
framework needed; works headless; CI-friendly.

```csharp
using Godot;

public partial class CombatTest : Node
{
    public override void _Ready()
    {
        int failures = 0;
        failures += Check("enemy chases in range", TestChase());
        failures += Check("damage reduces hp",     TestDamage());

        GD.Print(failures == 0 ? "TESTS PASSED" : $"TESTS FAILED: {failures}");
        GetTree().Quit(failures);     // exit code = failure count
    }

    private static int Check(string name, bool ok)
    {
        GD.Print($"{(ok ? "PASS" : "FAIL")}: {name}");
        return ok ? 0 : 1;
    }

    private bool TestChase()
    {
        var enemy = GD.Load<PackedScene>("res://scenes/Enemy.tscn").Instantiate<Enemy>();
        AddChild(enemy);
        // place a player in range, step one physics frame, read the FSM state.
        enemy._PhysicsProcess(1.0 / 60.0);
        return enemy.Current == Enemy.State.Chase;
    }

    private bool TestDamage() { /* ... */ return true; }
}
```

Run a single test:
```bash
godot.sh --headless --path <dir> res://tests/CombatTest.tscn ; echo "exit=$?"
```

### Why this shape

- **`GetTree().Quit(failures)`** — the int overload sets the process exit code.
  `Quit()` with no arg is 0 regardless of results (a common "tests always pass"
  bug).
- **Step `_PhysicsProcess(delta)` manually** for deterministic fixed-step logic
  rather than awaiting real frames — no timing flakiness.
- **Build before running.** The C# source generator + compiled assembly must
  exist or you get `Cannot instantiate C# script ... class could not be found`.
  `run_tests.sh` builds first.

## Awaiting signals / multiple frames

Some logic needs real frames (timers, tweens, nav sync). Use `async _Ready`:

```csharp
public override async void _Ready()
{
    await ToSignal(GetTree(), SceneTree.SignalName.PhysicsFrame);   // one tick
    await ToSignal(GetTree().CreateTimer(0.5), SceneTreeTimer.SignalName.Timeout);
    // ... assert, then Quit
}
```

## Scanning stdout for errors

Godot prints `ERROR:` / `SCRIPT ERROR:` to stderr/stdout on runtime problems.
Fail the run if any appear:

```bash
godot.sh --headless --path <dir> --quit-after 30 2>&1 | tee /tmp/run.log
grep -qE "ERROR|SCRIPT ERROR" /tmp/run.log && exit 1 || true
```

## GdUnit4 (framework option)

For a maintained suite. Add the NuGet package to the `.csproj`:

```xml
<ItemGroup>
  <PackageReference Include="gdUnit4.api" Version="4.*" />
</ItemGroup>
```
(and install the GdUnit4 editor addon for discovery). Tests use attributes:

```csharp
using GdUnit4;
using static GdUnit4.Assertions;

[TestSuite]
public class HealthTests
{
    [TestCase]
    public void DamageReducesHp()
    {
        var hp = new Health(100);
        hp.Take(30);
        AssertThat(hp.Current).IsEqual(70);
    }
}
```

Run headless via the GdUnit4 runner (the addon ships a CLI entry; see its docs
for the exact `godot --headless -s ...` invocation for the installed version).
Use GdUnit4 when you want discovery, rich assertions, and reports; use the
hand-rolled runner for quick gates.

## Headless screenshots

Fully headless has no real framebuffer. Options:
- **Viewport capture in a script**: during a short non-`--quit` run,
  `GetViewport().GetTexture().GetImage().SavePng("user://shot.png")` after a
  frame. Needs a rendering display, so run under `xvfb-run` on Linux CI.
- **xvfb**: `xvfb-run -a godot.sh --path <dir> --quit-after 5` gives a virtual
  display so rendering + screenshots work without a monitor.
- **Web build**: export to web and drive with Playwright (browser MCP) for true
  visual checks.

## Troubleshooting

- **"No main scene defined"** when running a test — pass the scene path as a CLI
  arg (`godot ... res://tests/X.tscn`); don't rely on `run/main_scene`.
- **Exit code always 0** — use `Quit(failures)`, not `Quit()`.
- **Class not found on run** — `dotnet build` first.
- **Flaky timing tests** — step `_PhysicsProcess(delta)` manually instead of
  real-time waits.
