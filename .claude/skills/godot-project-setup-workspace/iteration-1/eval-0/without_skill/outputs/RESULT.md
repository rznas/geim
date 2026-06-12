# StarForge — Godot 4.6 C# Project Setup Result

## What was created

Project scaffolded at `/tmp/eval-starforge-baseline` (copied here as `eval-starforge-baseline/`).

Files created by scaffold (`scripts/new_project.sh`):

- `project.godot` — declares `config/features=PackedStringArray("4.6", "C#", "Forward Plus")` and a `[dotnet]` section with `project/assembly_name="StarForge"`. Edited to add `run/main_scene="res://scenes/Main.tscn"` inside the `[application]` section.
- `StarForge.csproj` — `Sdk="Godot.NET.Sdk/4.6.3"`, `net8.0`, `EnableDynamicLoading=true`, `Nullable=enable`.
- `nuget.config` — bundled editor nupkgs feed first (offline-safe), nuget.org second.
- `.gitignore` — ignores `.godot/`, `bin/`, `obj/`, `*.user`.
- `scripts/`, `scenes/`, `assets/art`, `assets/audio` — source layout dirs.

Files created by hand (minimal runnable scene):

- `scripts/Main.cs` — `public partial class Main : Node`, prints in `_Ready()`.
- `scenes/Main.tscn` — one-node scene (`type="Node"`) with `Main.cs` attached.

## Build

Command:

```bash
cd /tmp/eval-starforge-baseline && dotnet build StarForge.csproj
```

Result: **SUCCEEDED** — `0 Warning(s), 0 Error(s)`, exit code 0. Output assembly: `.godot/mono/temp/bin/Debug/StarForge.dll`.

## Import (resource gate)

```bash
scripts/godot.sh --headless --path /tmp/eval-starforge-baseline --import
```

Result: clean, exit code 0.

## Run (headless)

Command:

```bash
scripts/godot.sh --headless --path /tmp/eval-starforge-baseline --quit-after 2
```

(`scripts/godot.sh` resolves to `/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64`.)

Result: **SUCCEEDED**, exit code 0. Literal stdout line printed by the C# `_Ready()`:

```
StarForge online: C# is running!
```
