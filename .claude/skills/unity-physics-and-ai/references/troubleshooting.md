# Physics & AI troubleshooting (Unity 6, C#)

The handful of failures that account for most lost time. Grounded in
`references/api/`; not compile-tested here.

## Two objects don't collide / pass through each other

Almost always the **Layer Collision Matrix** or a missing collider:

- **Layer Collision Matrix** (Project Settings > Physics) — if the two objects'
  layers are unchecked against each other, they never collide and no trigger
  fires, no matter your code (`api/class-PhysicsManager.md`). Check the matrix
  first. From script: `Physics.GetIgnoreLayerCollision(a, b)` tells you if a
  pair is ignored; `Physics.IgnoreLayerCollision(a, b)` toggles it
  (`api/Physics.IgnoreLayerCollision.md`).
- **Missing collider** — a `Sprite`/`MeshFilter` is just visuals. Each object
  needs an actual `Collider` / `Collider2D` (BoxCollider, etc. —
  `api/class-BoxCollider.md`).
- **Wrong dimension** — a 3D `Collider` and a 2D `Collider2D` are in separate
  physics worlds and never interact. See "2D vs 3D mismatch" below.

## Trigger (`OnTriggerEnter`) never fires

Two requirements, both easy to miss:

1. **`isTrigger = true`** on one of the colliders (`api/Collider.md` properties).
2. **A Rigidbody on at least one of the pair.** The docs are explicit: "Any
   Collider on a GameObject that has a Rigidbody component … can create OnTrigger
   events" (`api/Collider.OnTriggerEnter.md`). Two bare *static* colliders
   touching produce nothing. Add a Rigidbody (often `isKinematic = true` if you
   don't want physics motion) to the moving side.

Also: 2D objects use `OnTriggerEnter2D(Collider2D)`, not `OnTriggerEnter`. And
the matrix above still applies to triggers.

## `OnCollisionEnter` never fires

Collision events "are only sent if one of the colliders also has a
**non-kinematic** rigidbody attached" (`api/Collider.OnCollisionEnter.md`). If
both bodies are kinematic or static, no collision callback. Make at least one a
dynamic (non-kinematic) Rigidbody.

## Object jitters, vibrates, tunnels, or teleports back

You are **fighting the solver** — almost certainly setting `transform.position`
(or `Rigidbody.position`) on a Rigidbody every frame. Don't. The docs:
"In most cases you should not modify the velocity directly … use AddForce
instead. Do not set the linear velocity of an object every physics step"
(`api/Rigidbody-linearVelocity.md`). Fix:

- Move it with `rb.AddForce(...)`, `rb.MovePosition(target)`, or set
  `rb.linearVelocity` — **all in `FixedUpdate`**, not `Update`
  (`api/Rigidbody.AddForce.md`, `Rigidbody.MovePosition.md`).
- To teleport once, set `rb.position` (use `Rigidbody.position`, not
  `MovePosition`, per `api/Rigidbody.MovePosition.md`), ideally in `Awake`/`Start`.
- Fast small objects tunneling through walls → set
  `collisionDetectionMode` to Continuous, or raycast the motion.
- If you genuinely want transform-driven motion, set `rb.isKinematic = true`
  first (`api/Rigidbody-isKinematic.md`) — then transforms are legal.

## `Rigidbody.velocity` doesn't compile

It was **renamed to `linearVelocity` in Unity 6** (3D and 2D). Use
`rb.linearVelocity` / `rb2D.linearVelocity`. (Verified:
`api/Rigidbody-linearVelocity.md` and `api/Rigidbody2D-linearVelocity.md` exist;
there is no `Rigidbody-velocity.md` / `Rigidbody2D-velocity.md` in the Unity 6
ScriptReference.)

## CharacterController falls through the floor / ignores gravity

`CharacterController` "does not use gravity" — you must apply it yourself and
feed it into `Move` (`api/CharacterController.Move.md`). Accumulate a
`playerVelocity.y += gravityValue * Time.deltaTime`, then
`controller.Move(...)`. Check `controller.isGrounded`
(`api/CharacterController-isGrounded.md`) and keep a small downward velocity when
grounded so it stays stuck. The floor still needs a real `Collider`.

## NavMeshAgent won't move

In rough order of likelihood:

- **No NavMesh baked.** There is no walkable surface until you bake one (AI
  Navigation package / `NavMeshSurface`). Check `agent.isOnNavMesh` — if false,
  the agent isn't on a mesh (`api/AI.NavMeshAgent.md`).
- **`SetDestination` returned `false`.** It fails when there's no valid nearby
  NavMesh point (`api/AI.NavMeshAgent.SetDestination.md`). Capture and log the
  return value.
- **Querying too early.** The path "may not become available until after a few
  frames"; `pathPending` is true meanwhile. Don't assume instant arrival.
- **`isStopped == true`** somewhere in your code holding it in place.
- **`agent.speed == 0`** or `acceleration == 0`.
- **`updatePosition == false`** without you driving `nextPosition` — the
  simulated agent moves but the transform doesn't follow.

## NavMeshAgent jitters or won't settle on the target

You're calling `SetDestination` every frame on a moving target. Only re-issue it
when the target actually moves (the `api/AI.NavMeshAgent-destination.md` example
updates only past a 1-unit threshold). For arrival, compose
`!pathPending && remainingDistance <= stoppingDistance` rather than checking
exact position equality.

## Raycast always misses (or always hits) / line-of-sight wrong

- **Wrong LayerMask.** `Physics.Raycast`'s mask decides what the ray sees
  (`api/Physics.Raycast.md`). For LOS, mask only the world/blockers so
  decorative props don't break sight, and exclude the caster's own layer.
- **Origin inside a collider.** "Raycasts will not detect Colliders for which
  the Raycast origin is inside the Collider" (`api/Physics.Raycast.md`). Start
  the ray slightly outside.
- **Triggers.** By default triggers may/may not register depending on
  `Physics.queriesHitTriggers`; pass an explicit `QueryTriggerInteraction` to be
  sure.
- **Ran in `Update`.** Physics queries belong in `FixedUpdate` — every Unity
  raycast example uses it.
- **2D:** `Physics2D.Raycast` returns a `RaycastHit2D` (test with `if (hit)`),
  not a `bool` + `out` like the 3D version (`api/Physics2D.Raycast.md`).

## 2D vs 3D component mismatch

The two physics systems are entirely separate. A common silent failure is
mixing them. Keep each row consistent:

| 3D | 2D |
|----|----|
| `Rigidbody` | `Rigidbody2D` |
| `Collider` (Box/Sphere/Capsule/Mesh) | `Collider2D` (Box/Circle/Capsule/Polygon) |
| `OnCollisionEnter(Collision)` | `OnCollisionEnter2D(Collision2D)` |
| `OnTriggerEnter(Collider)` | `OnTriggerEnter2D(Collider2D)` |
| `Physics.Raycast` → `bool` + `RaycastHit` | `Physics2D.Raycast` → `RaycastHit2D` |
| `Vector3`, `ForceMode` | `Vector2`, `ForceMode2D` |
| gravity via `rb.useGravity` + global | per-body `rb2D.gravityScale` + global |

A 3D `Rigidbody` with a 2D `Collider2D` (or vice-versa) does nothing. If "nothing
happens," confirm every physics component on the object is from the **same**
dimension.
