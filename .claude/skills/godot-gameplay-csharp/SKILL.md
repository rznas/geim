---
name: godot-gameplay-csharp
description: >
  Write gameplay logic for a Godot 4.6 game in C# — node scripts, the scene
  tree, input handling, signals, timers, groups, autoload singletons, and
  authoring .tscn/.tres resource files by hand. Use this whenever you are
  implementing player controllers, game rules, mechanics, state, spawning,
  scene transitions, or wiring nodes together with signals in a Godot C#
  project. Reach for it any time you're writing a `partial class : Node`,
  calling GetNode/Instantiate, connecting signals, or building a .tscn — it has
  the verified C# idioms (signals-as-events, [Export], [Signal]…EventHandler,
  the struct-copy gotcha) and the exact text format of scene/resource files,
  which are easy to get subtly wrong by hand. Covers Gameplay Programmer and
  Systems Designer implementation work. Assumes a project from
  godot-project-setup already builds.
---

# Godot Gameplay in C#

Implement gameplay: scripts attached to nodes, the scene tree, input, signals,
and the resource files that hold it all. Every C# idiom here is the form Godot's
own docs and source generator expect — getting these subtly wrong (a missing
`partial`, a `string` where a `StringName` is wanted, a mutated struct copy) is
the main source of "it compiles but does nothing" bugs.

## The mental model

A Godot game is a tree of **nodes**. A **scene** (`.tscn`) is a saved subtree you
can instance many times. A **script** (`.cs`) attached to a node adds behavior
via lifecycle overrides. You build behavior by composing nodes and reacting to
**signals** (events). This is composition, not deep inheritance — prefer small
nodes wired together over god-classes.

Read `references/scripting_csharp.md` for the verified patterns: lifecycle
(`_Ready`/`_Process`/`_PhysicsProcess`/`_Input`), node access
(`GetNode<T>`/`GetNodeOrNull<T>`), instancing scenes (`GD.Load<PackedScene>` →
`Instantiate<T>`), signals as C# events (`[Signal] … EventHandler`, `+=`,
`EmitSignal`), groups, timers, and `await ToSignal`.

## The traps that waste the most time

These cost more debugging time than anything else — internalize them:

1. **`partial` is mandatory.** The source generator emits the other half of
   every node class. `public partial class Player : CharacterBody2D`. Drop
   `partial` → compile error or silent non-binding.
2. **Class name must equal file name.** `Player.cs` ↔ `class Player`, or
   `Cannot find class Player for script`.
3. **Structs are copied.** `Position.X = 5f` mutates a throwaway and is a
   compile error. Do `var p = Position; p.X = 5f; Position = p;` or
   `Position = Position with { X = 5f };`.
4. **`Call`/`Connect`/`Get`/`Set` by string want snake_case.** These reflect
   over Godot's native API: `CallDeferred("add_child", node)`, not `"AddChild"`.
   Prefer the generated `MethodName`/`SignalName`/`PropertyName` StringNames to
   avoid the issue entirely: `CallDeferred(Node.MethodName.AddChild, node)`.
5. **Cache hot property reads.** Every `GodotObject` property read is a native
   interop call. In loops, copy to a local, mutate, assign once.

## Authoring scenes and resources by hand

You don't need the GUI. `.tscn` and `.tres` are plain text and you can write or
edit them directly. The exact, verified format — `ext_resource`, `sub_resource`,
`[node]` blocks, parent paths, property assignment, instancing a sub-scene with
`PackedScene` — is in `references/scene_and_resource_format.md`. Get the
`load_steps` count and `ExtResource("id")` references right and Godot loads it.

For a custom data resource (a `Resource` subclass holding stats, config, etc.),
see the `[GlobalClass]` + `.tres` pattern in that same reference — this is how
designers tune values without touching code.

## Scaffolding a node script

`scripts/new_node_script.sh <projdir> <ClassName> <BaseType> [subdir]` writes a
correctly-formed `partial class <ClassName> : <BaseType>` with the right `using`,
lifecycle stubs, and a matching filename, into `res://scripts/[subdir]/`. It
won't let you create a mismatched class/file name. After writing scripts, build
and smoke-test with the project-setup skill's `build_and_check.sh`.

## Verifying gameplay headlessly

You can prove logic runs without a GUI: set the scene as `run/main_scene` (or
pass `--scene res://...`), then
`scripts/godot.sh --headless --path <dir> --quit-after <N>` and assert on stdout.
For anything beyond "did `_Ready` fire", hand off to `godot-qa-headless`, which
has a real test harness (GdUnit4 / SceneTree runner) for asserting on game state.

## Where to go next

Movement with collisions, character bodies, NPC AI → `godot-physics-and-ai`.
Menus, HUD, on-screen text → `godot-ui-csharp`. Visual feedback, particles,
shaders → `godot-graphics-shaders`. This skill is the logic spine the others
attach to.
