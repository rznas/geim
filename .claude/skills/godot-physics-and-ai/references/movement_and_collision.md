# Movement & collision in C# (Godot 4.6)

## CharacterBody2D movement loop (the canonical form)

```csharp
public partial class Player : CharacterBody2D
{
    [Export] public float Speed = 300f;
    [Export] public float JumpSpeed = -400f;

    public override void _PhysicsProcess(double delta)
    {
        Vector2 velocity = Velocity;                // copy the struct out

        // GetGravity() is a CharacterBody method that reads the project's gravity
        // (and any area overrides) — the form the official Godot 4.6 C# example uses.
        velocity.Y += GetGravity().Y * (float)delta;

        if (Input.IsActionJustPressed("jump") && IsOnFloor())
            velocity.Y = JumpSpeed;

        float direction = Input.GetAxis("ui_left", "ui_right");
        velocity.X = direction * Speed;

        Velocity = velocity;                        // write it back
        MoveAndSlide();                             // moves using Velocity, resolves collisions
    }
}
```

`GetGravity()` returns a `Vector2` (the gravity vector); use `.Y` for a normal
downward-gravity platformer. This is exactly the form in Godot's
`using_character_body_2d` doc. `Input.GetAxis(neg, pos)` returns -1..1;
`Input.GetVector(left,right,up,down)` returns a normalized `Vector2` for top-down.

Key calls after `MoveAndSlide()`:
- `IsOnFloor()`, `IsOnWall()`, `IsOnCeiling()` — contact state this frame.
- `GetSlideCollisionCount()` + `GetSlideCollision(i)` — what you hit, with
  normal, collider, position. Use this for "took damage on contact" logic.

3D is identical with `Vector3` and `CharacterBody3D`; gravity setting key is
`physics/3d/default_gravity`.

## Collision layers & masks

Every physics body/area has two 32-bit fields:
- **`CollisionLayer`** — the layers this object *occupies* (what it IS).
- **`CollisionMask`** — the layers this object *scans for* (what it DETECTS).

Detection/blocking happens **A↔B only if A.mask ∩ B.layer ≠ 0** (checked both
directions for blocking). They're independent — set both sides on purpose.

```csharp
// Layer 1 = world, 2 = player, 3 = enemies, 4 = pickups (1-indexed in editor)
// In code the bits are 0-indexed via the helper methods:
SetCollisionLayerValue(2, true);   // I am on the "player" layer
SetCollisionMaskValue(1, true);    // I collide with the world
SetCollisionMaskValue(4, true);    // I detect pickups
SetCollisionMaskValue(2, false);   // I do NOT collide with other players
```

Name layers once in `project.godot` so intent is readable:

```
[layer_names]

2d_physics/layer_1="world"
2d_physics/layer_2="player"
2d_physics/layer_3="enemies"
2d_physics/layer_4="pickups"
```

## Areas (overlap detection, not blocking)

```csharp
public partial class Hitbox : Area2D
{
    [Signal] public delegate void HitEventHandler(Node2D who);

    public override void _Ready()
    {
        BodyEntered += body => { if (body is Player p) EmitSignal(SignalName.Hit, p); };
        AreaEntered += area => GD.Print($"overlapped {area.Name}");
    }
}
```

An Area never stops a body. Its mask decides which layers it watches; its layer
decides which other areas/monitoring bodies can see *it*.

## RayCast (line of sight, ground/wall checks, hitscan)

```csharp
var ray = GetNode<RayCast2D>("LineOfSight");
ray.TargetPosition = ToLocal(player.GlobalPosition);   // relative to the raycast
ray.ForceRaycastUpdate();                               // if querying same frame
if (ray.IsColliding() && ray.GetCollider() is Player)
    canSeePlayer = true;
```

Set the RayCast's `CollisionMask` to only the layers that should block sight
(usually world + target), so props don't false-negative your LOS.

## Required: a CollisionShape child

Every physics body/area needs a `CollisionShape2D/3D` (or `CollisionPolygon`)
child with a `shape` set, or it has no presence. A body with no shape "falls
through everything." In a `.tscn`:

```
[sub_resource type="RectangleShape2D" id="s1"]
size = Vector2(32, 48)

[node name="Collision" type="CollisionShape2D" parent="."]
shape = SubResource("s1")
```
