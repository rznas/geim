# Physics & AI troubleshooting (Godot 4.6)

## Two bodies don't collide / Area never fires

Layer/mask mismatch — the most common cause. For A to detect/block B, **A's
CollisionMask must include a layer that B's CollisionLayer occupies.** Check both
objects. Run with `--debug-collisions` to see shapes; if a shape is invisible,
it's missing or has no `shape` resource.

## Body falls through the floor

- The floor needs a `StaticBody2D/3D` (or a body) with a `CollisionShape` that
  has a `shape` set. A bare `Sprite2D`/`Polygon2D` has no collision.
- The moving body needs its own `CollisionShape` child too.
- The body's mask must include the floor's layer.

## `MoveAndSlide()` does nothing

- It only exists on `CharacterBody2D/3D`. On other nodes it's a no-op or missing.
- It moves using the `Velocity` property — if you never set `Velocity`, nothing
  happens. Remember `Velocity.Y += x` is a **compile error** (struct copy); set
  the whole vector: `var v = Velocity; v.Y += x; Velocity = v;`.

## Character jitters / sticks on slopes

Use `MotionMode = MotionModeEnum.Grounded` (default) for platformers so
`IsOnFloor()` and slope handling work. `FloorStopOnSlope = true` prevents
sliding down when idle. For top-down, use `MotionModeEnum.Floating`.

## RigidBody behaves erratically / teleports

Never set `Position`/`GlobalPosition` on a RigidBody every frame — you're
fighting the solver. Apply `ApplyImpulse`/`ApplyForce`, or set
`LinearVelocity`/`AngularVelocity`. To place it once, set position in `_Ready`
before physics runs, or use `PhysicsServer` teleport semantics.

## NavigationAgent won't move / path is empty

The signature symptom of querying before the nav map synced. Guard every physics
frame:

```csharp
if (NavigationServer2D.MapGetIterationId(_agent.GetNavigationMap()) == 0) return;
if (_agent.IsNavigationFinished()) return;
```

Also confirm the `NavigationRegion2D` is **baked** (has a `NavigationPolygon`
with geometry). An unbaked region produces empty paths. Run with
`--debug-navigation` to see the nav mesh.

## NavigationAgent jitters / dances between two points

You're requesting a new path too often (e.g. setting `TargetPosition` every
frame, or `path_max_distance` too small). Set the target only when it actually
changes, and call `GetNextPathPosition()` once per physics frame.

## Avoidance safe-velocity is always zero

The agent must have a `TargetPosition` set even when used only for avoidance, and
`AvoidanceEnabled = true`, and you must move using the `VelocityComputed`
signal's `safeVelocity` — not your raw velocity.

## RayCast always misses / always hits

- It updates once per physics frame and caches; call `ForceRaycastUpdate()` if
  you set `TargetPosition` and need the result the same frame.
- `TargetPosition` is **local** to the RayCast node — convert with
  `ToLocal(targetGlobalPos)`.
- Its `CollisionMask` decides what blocks the ray; set it to world + targets so
  decorative props don't break line-of-sight checks.
