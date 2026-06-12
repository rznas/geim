# Minimal runnable C# scene

The smallest project that proves C# executes at runtime. Verified against
Godot 4.6.3-mono. Every file format below is what Godot writes itself.

## 1. The script — `scripts/Main.cs`

The class name **must** match the file name (`Main.cs` → `class Main`), or Godot
throws `Cannot find class Main for script res://scripts/Main.cs`.

```csharp
using Godot;

public partial class Main : Node
{
    public override void _Ready()
    {
        GD.Print("hello from C#");
    }

    public override void _Process(double delta)
    {
        // per-frame logic; delta is seconds since last frame
    }
}
```

`partial` is required — Godot's source generator emits the other half of the
class. Omit it and you get a compile error.

## 2. The scene — `scenes/Main.tscn`

`.tscn` is a plain-text resource. `ext_resource` points at the script; the node
references it with `ExtResource("<id>")`. The `uid://` line is a stable
identifier — make it unique per scene.

```
[gd_scene load_steps=2 format=3 uid="uid://bmaingame0001"]

[ext_resource type="Script" path="res://scripts/Main.cs" id="1"]

[node name="Main" type="Node"]
script = ExtResource("1")
```

`format=3` is the Godot 4 scene format. `load_steps` is the count of resources
to load (here: 1 ext_resource + the root = 2). Godot recomputes it on save, so
an off-by-one is harmless — but keep it ≥ actual count.

## 3. Wire it as the main scene — in `project.godot`

`run/main_scene` is an `[application]` key. It must live **inside the existing
`[application]` section**, not be blindly appended to the end of the file —
`project.godot` is INI-style, and the scaffold's file ends with `[dotnet]`, so a
naive `>> project.godot` lands the key under `[dotnet]` where Godot silently
ignores it (`Error: no main scene defined`). Edit the section, don't append:

```
[application]

config/name="VerifyGame"
config/features=PackedStringArray("4.6", "C#", "Forward Plus")
run/main_scene="res://scenes/Main.tscn"
```

General rule for `project.godot`: every key belongs under a specific `[section]`
header. When adding settings (`input/`, `display/`, `rendering/`, …), place them
under the right section or add the header — appending to the file's tail is only
safe if the last section is the one you want.

## 4. Build and run headless

```bash
dotnet build <dir>/<Name>.csproj
scripts/godot.sh --headless --path <dir> --quit-after 2
# stdout contains: hello from C#
```

`--quit-after 2` runs two frames then exits 0 — enough for `_Ready` to fire.
This is the pattern every QA/headless-test skill builds on: run a scene for N
frames, grep stdout for an expected marker.

## res:// paths

Inside a Godot project, `res://` is the project root. A file at
`<projdir>/scripts/Main.cs` is `res://scripts/Main.cs`. Always use `res://` in
scene files, scripts (`GD.Load`, `GetNode` paths point at the live tree, not
res://), and `--scene` arguments — never absolute filesystem paths.
