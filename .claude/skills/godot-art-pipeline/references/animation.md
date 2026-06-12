# Animation playback in C# (Godot 4.6)

Three systems. Verified C# API below.

## AnimatedSprite2D + SpriteFrames (2D frame animation)

For sprite-sheet / frame-by-frame 2D. `SpriteFrames` is a resource holding named
animations, each a list of texture frames at an FPS.

```csharp
var sprite = GetNode<AnimatedSprite2D>("Sprite");
sprite.Play("run");            // play a named animation from the SpriteFrames
sprite.Play("idle");
sprite.Stop();
bool playing = sprite.IsPlaying();
sprite.AnimationFinished += () => GD.Print("done");   // for non-looping clips
```

Build a SpriteFrames from a sheet in the editor (SpriteFrames editor → "Add
frames from sprite sheet", set grid), or author the `.tres`. Assign it to the
node's `SpriteFrames` property.

## AnimationPlayer (keyframed property animation, 2D & 3D)

The general system: animate *any* property of any node via keyframed tracks.
Imported glTF models arrive with their own `AnimationPlayer` holding the clips
exported from Blender.

```csharp
var anim = GetNode<AnimationPlayer>("AnimationPlayer");
anim.Play("Idle");
anim.Play("Attack", customBlend: 0.2f);    // 0.2s crossfade from current
string current = anim.CurrentAnimation;     // StringName
anim.AnimationFinished += name => { if (name == "Attack") anim.Play("Idle"); };
anim.Stop();
```

- `Play(name)` — name is a `StringName`; must match a registered animation.
- `AnimationFinished` fires with the finished animation's name — chain clips here.
- Set **Autoplay** on the AnimationPlayer (or an animation's autoplay flag) to
  start a clip when the scene loads.
- A **RESET** animation (keyframes at t=0) defines the default pose; useful for
  restoring state.

## AnimationTree (blending & state machines)

For locomotion — blend walk↔run by speed, transition idle→jump→fall as a state
machine. An `AnimationTree` drives an `AnimationPlayer` (set `AnimPlayer`) through
a tree of blend nodes / a state machine.

```csharp
var tree = GetNode<AnimationTree>("AnimationTree");
tree.Active = true;

// Blend space: feed a parameter (e.g. normalized speed) into a BlendSpace1D.
tree.Set("parameters/Locomotion/blend_position", speed01);

// State machine: travel to a state.
var sm = (AnimationNodeStateMachinePlayback)tree.Get("parameters/playback");
sm.Travel("Jump");
```

Parameter paths (`parameters/.../blend_position`, `parameters/playback`) come
from the names you give nodes in the AnimationTree. Set them with `tree.Set(...)`
since they're dynamic. `Travel` moves through valid transitions; `Start` jumps
directly to a state.

## Choosing

- Simple 2D sprite loop → **AnimatedSprite2D**.
- Imported 3D model clips, or keyframing UI/props → **AnimationPlayer**.
- Smooth blends and a real locomotion state machine → **AnimationTree** over an
  AnimationPlayer.
