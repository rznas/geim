# RESULT — eval-nomain (without_skill)

## Problem
Project built fine but headless run reported `no main scene defined in the project`.

## Root cause
`project.godot` had an `[application]` section but no `run/main_scene` key, so Godot had no scene to launch.

## Change made
Added one line to the `[application]` section of `project.godot`:
`run/main_scene="res://scenes/Main.tscn"`

### Final `[application]` section
```
[application]

config/name="NoMainGame"
run/main_scene="res://scenes/Main.tscn"
config/features=PackedStringArray("4.6", "C#", "Forward Plus")
```

No other files were changed. (The C# assembly was built and resources were imported, but no source files were edited.)

## Build + run commands

Build the C# assembly:
```
dotnet build NoMainGame.csproj
```

Import resources (generates the `.godot` cache so the scene can load headless):
```
/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64 --headless --import
```

### Exact headless run command
```
/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64 --headless --quit-after 5
```
(Run from the project directory `/tmp/eval-nomain-baseline`.)

## Literal stdout
```
Godot Engine v4.6.3.stable.mono.official.7d41c59c4 - https://godotengine.org

MAIN SCENE RUNNING
```

The literal line printed by `GD.Print` was:

```
MAIN SCENE RUNNING
```
