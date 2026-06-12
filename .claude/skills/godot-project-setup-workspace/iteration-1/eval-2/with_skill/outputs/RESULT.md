# Result — eval-nomain ("no main scene defined")

## Diagnosis

The project built fine but had **no `run/main_scene` key** in `project.godot`.
Godot's `[application]` section declared `config/name` and `config/features`
but never pointed at a scene, so a headless run reported
`no main scene defined in the project`.

The skill's `references/minimal_runnable.md` §3 covers this exactly: `run/main_scene`
is an `[application]` key and must live **inside** the existing `[application]`
section — appending it to the file's tail would land it under `[dotnet]`, where
Godot silently ignores it.

## What changed in project.godot

Added one line, `run/main_scene="res://scenes/Main.tscn"`, inside the existing
`[application]` section. Nothing else was touched.

Final `[application]` section:

```
[application]

config/name="NoMainGame"
config/features=PackedStringArray("4.6", "C#", "Forward Plus")
run/main_scene="res://scenes/Main.tscn"
```

(The `[dotnet]` section below it is unchanged: `project/assembly_name="NoMainGame"`.)

## Build + run commands

```bash
# 1. Build the C# assembly
dotnet build /tmp/eval-nomain/NoMainGame.csproj

# 2. (one-time) import resources headless
GODOT4=/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64 \
  /home/reza/projects/game/.claude/skills/godot-project-setup/scripts/godot.sh \
  --headless --path /tmp/eval-nomain --import

# 3. Run the main scene headless for 2 frames (enough for _Ready to fire)
GODOT4=/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64 \
  /home/reza/projects/game/.claude/skills/godot-project-setup/scripts/godot.sh \
  --headless --path /tmp/eval-nomain --quit-after 2
```

The exact headless run command (step 3) condensed:

```bash
/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64 \
  --headless --path /tmp/eval-nomain --quit-after 2
```

## stdout observed

```
Godot Engine v4.6.3.stable.mono.official.7d41c59c4 - https://godotengine.org

MAIN SCENE RUNNING
```

The literal printed line from `GD.Print` (in `scripts/Main.cs` `_Ready`):

```
MAIN SCENE RUNNING
```

The "no main scene defined" error is gone.
</content>
</invoke>
