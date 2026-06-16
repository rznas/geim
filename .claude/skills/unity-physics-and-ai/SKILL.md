---
name: unity-physics-and-ai
description: >
  Implement movement, collisions, and NPC/enemy AI in a Unity 6 (6000.x) C#
  game. Use this whenever you are building character movement (Rigidbody,
  CharacterController.Move, AddForce, linearVelocity, jumping, gravity),
  collision and hit detection (Collider/Collider2D, isTrigger, layers + the
  Layer Collision Matrix, Physics.Raycast / Physics2D.Raycast), physics-driven
  objects (Rigidbody / Rigidbody2D, ForceMode, impulses), pathfinding and
  navigation (NavMesh + NavMeshAgent.SetDestination / destination), or
  enemy/NPC behaviour (FSM state machines, perception, chase/patrol/attack).
  Reach for it any time the task involves things bumping into each other, a
  character that walks on floors and slopes, "make the enemy follow the
  player", raycasts, line-of-sight, trigger volumes (OnTriggerEnter) vs
  collisions (OnCollisionEnter), or 2D-vs-3D physics component confusion. It
  has the verified C# physics idioms and the FixedUpdate / layer-matrix rules
  that trip everyone up. Covers Gameplay Programmer + AI Programmer work.
  Assumes a buildable project (unity-project-setup) and basic MonoBehaviour
  scripting (unity-gameplay-csharp).
---

# Unity Physics & AI in C#

Two tightly linked jobs that share the physics engine: making things move and
collide believably, and making non-player things act. Unity 6 (6000.x).

> Snippets are doc-sourced from the embedded Unity 6 ScriptReference
> (`references/api/`), not compile-tested in this environment (no Editor
> installed). Grep `references/api/` and copy the real signature before writing
> any API call — Unity is not Godot (MonoBehaviour, `GetComponent<T>()`,
> `transform`, the component model all differ).

## The one thing that trips everyone up

**Move a Rigidbody in `FixedUpdate`, through the physics API — never by setting
`transform.position` every frame.** A Rigidbody is owned by the solver. If you
write `transform.position` (or `Rigidbody.position`) each frame you fight it:
jitter, tunneling, dead collisions. Drive it instead with one of:

- `rb.AddForce(...)` / `rb.AddForce(x, y, z, ForceMode.Impulse)` — accumulate force
- `rb.MovePosition(target)` — kinematic-style move that respects interpolation
- `rb.linearVelocity = ...` — set velocity directly (only for instant changes like a jump)

And **`Rigidbody.velocity` was renamed to `Rigidbody.linearVelocity` in Unity
6** (same for `Rigidbody2D`). Use `linearVelocity` — `velocity` is gone/obsolete
here. Verified: `references/api/Rigidbody-linearVelocity.md` exists and there is
no `Rigidbody-velocity.md`.

```csharp
// references/api/Rigidbody.AddForce.md  +  Rigidbody-linearVelocity.md (verbatim idioms)
using UnityEngine;

public class Mover : MonoBehaviour
{
    Rigidbody rb;
    public float thrust = 20f;

    void Start() => rb = GetComponent<Rigidbody>();

    void FixedUpdate()                       // physics goes in FixedUpdate, not Update
    {
        rb.AddForce(transform.up * thrust);  // continuous force
        // Instant velocity change (e.g. a jump) — the ONE time you set velocity directly:
        // rb.linearVelocity = new Vector3(0, 10, 0);
    }
}
```

The docs say it outright: "Do not set the linear velocity of an object every
physics step, this will lead to unrealistic physics simulation … use AddForce
instead" (`references/api/Rigidbody-linearVelocity.md`). Physics queries
(`Physics.Raycast`) also belong in `FixedUpdate` — every Unity raycast example
uses it.

## Pick the right body type — this decides everything

| Component | Use for | Moved by | Stops things? |
|-----------|---------|----------|----------------|
| `Rigidbody` / `Rigidbody2D` (Dynamic) | physics props: crates, balls, ragdolls, projectiles | the solver — `AddForce`, `MovePosition`, set `linearVelocity` (in `FixedUpdate`) | yes |
| `CharacterController` | players/enemies you steer directly, no physics forces | `controller.Move(motion)` in `Update` — you add your own gravity | yes (collides, doesn't bounce) |
| `Collider` / `Collider2D` on a static object (no Rigidbody) | floors, walls, level geometry | nothing | yes |
| `Collider` with `isTrigger = true` | detection zones, pickups, hitboxes, aggro ranges — **overlap, not collision** | code | no — only reports overlap via `OnTriggerEnter` |

`CharacterController` is *not* a Rigidbody: it "is not affected by forces and
will only move when you call the Move function" and "does not use gravity"
(`references/api/CharacterController.md`, `CharacterController.Move.md`) — you
apply gravity to a `playerVelocity.y` yourself and feed it into `Move`.

Full movement code (Rigidbody + CharacterController, 2D and 3D), layers, and
raycasts live in `references/movement_and_collision.md`.

## Triggers vs collisions (and why your callback never fires)

- `OnCollisionEnter(Collision c)` — solid contact; one of the pair needs a
  **non-kinematic Rigidbody**. `c` carries contact points + `relativeVelocity`.
- `OnTriggerEnter(Collider other)` — overlap of a collider where one has
  `isTrigger = true`. Gives you just the `other` collider.

The gotcha: **a trigger only fires if at least one of the two objects has a
Rigidbody (or Rigidbody2D).** Per the docs, "Any Collider on a GameObject that
has a Rigidbody component … can create OnTrigger events" and collision events
"are only sent if one of the colliders also has a non-kinematic rigidbody"
(`references/api/Collider.OnTriggerEnter.md`, `Collider.OnCollisionEnter.md`).
Two bare static colliders touching = silence.

**2D uses the `2D` callbacks and `2D` types** — `OnTriggerEnter2D(Collider2D)`,
`OnCollisionEnter2D(Collision2D)`. Mixing a 3D `Collider` with a 2D
`Rigidbody2D` does nothing; they are separate physics worlds.

## Layers & the Layer Collision Matrix (the silent killer)

What collides with what is governed by the **Layer Collision Matrix** (Project
Settings > Physics, "Layer Collision Matrix"
— `references/api/class-PhysicsManager.md`). If two layers are unchecked there,
their colliders pass through each other and no trigger fires — regardless of
your code. From script, toggle a pair with
`Physics.IgnoreLayerCollision(layer1, layer2)`
(`references/api/Physics.IgnoreLayerCollision.md`).

For **raycasts**, the filter is a `LayerMask`, not the matrix. Build it by name
so masks read as intent:

```csharp
// references/api/Physics.Raycast.md (verbatim)
LayerMask layerMask = LayerMask.GetMask("Wall", "Character");

void FixedUpdate()
{
    RaycastHit hit;
    if (Physics.Raycast(transform.position,
                        transform.TransformDirection(Vector3.forward),
                        out hit, Mathf.Infinity, layerMask))
        Debug.Log($"Hit {hit.collider.name} at {hit.distance}");
}
```

2D's equivalent is `Physics2D.Raycast(origin, direction, distance, layerMask)`
returning a `RaycastHit2D` (truthy via `if (hit)`) —
`references/api/Physics2D.Raycast.md`. Full mask + matrix discussion in
`references/movement_and_collision.md`.

## NavMesh & NavMeshAgent (pathfinding)

Two parts: **bake** a NavMesh over your static geometry (AI Navigation package
/ NavMeshSurface, Editor-side), then put a `NavMeshAgent` on each mover and just
hand it a destination. The agent walks the baked mesh for you.

```csharp
// references/api/AI.NavMeshAgent.SetDestination.md  +  AI.NavMeshAgent-destination.md
using UnityEngine;
using UnityEngine.AI;                 // NavMeshAgent lives in UnityEngine.AI

[RequireComponent(typeof(NavMeshAgent))]
public class Follow : MonoBehaviour
{
    public Transform target;
    NavMeshAgent agent;

    void Start() => agent = GetComponent<NavMeshAgent>();

    void Update()
    {
        agent.SetDestination(target.position);   // or: agent.destination = target.position;
    }
}
```

`SetDestination` returns a `bool` (false if no valid nearby NavMesh point — e.g.
nothing baked). The path "may not become available until after a few frames";
poll `pathPending`, and check `remainingDistance <= stoppingDistance` for
"arrived". Baking, `isOnNavMesh`, `Warp`, and the "agent won't move" gotchas are
in `references/navmesh_and_ai.md`.

## Enemy / NPC AI — an FSM driving the agent

Behaviour is a clean enum + `switch` **finite state machine**
(Idle → Patrol → Chase → Attack); perception (distance + `Physics.Raycast`
line-of-sight) feeds the transitions; the chosen state calls
`agent.SetDestination`. Keep the current state an inspectable field so
`unity-qa-testing` can assert "enemy enters Chase when player within range"
headlessly.

Scaffold one with `scripts/new_enemy_fsm.sh <projdir> <EnemyName>` — it writes a
ready-to-extend `<EnemyName> : MonoBehaviour` with the four states, a perception
hook, and a `NavMeshAgent`. The full pattern (and when to graduate to a
hierarchical/behaviour-tree AI) is in `references/navmesh_and_ai.md`.

## Scaffolding

- `scripts/new_enemy_fsm.sh <projdir> <EnemyName> [subdir]` — enum-based FSM
  enemy on a NavMeshAgent with Idle/Patrol/Chase/Attack + perception. File-only.
- `scripts/unity.sh` — the shared Editor wrapper (resolves Unity 6, fails clear
  with install instructions when no Editor is present).

## Debugging

`references/troubleshooting.md` covers the usual suspects: nothing collides
(Layer Collision Matrix / layer mismatch), trigger won't fire (no Rigidbody in
the pair / `isTrigger` off), object jitters or tunnels (you set `transform` on a
Rigidbody — use `AddForce`/`MovePosition`/`linearVelocity` in `FixedUpdate`),
agent won't move (no baked NavMesh / `SetDestination` returned false), and the
2D-vs-3D component mismatch.

## What this covers / hands off to

- **Covers:** Rigidbody/Rigidbody2D + Collider physics, CharacterController
  movement, raycasts, layers + the collision matrix, triggers vs collisions,
  NavMesh + NavMeshAgent pathfinding, FSM enemy AI. Serves the **Gameplay
  Programmer** and **AI Programmer** roles.
- **Hands off to:** `unity-gameplay-csharp` (MonoBehaviour basics, input, the
  component model), `unity-project-setup` (a project that builds),
  `unity-qa-testing` (headless verification of AI state), `unity-graphics-shaders`
  (visual hit feedback). Networking-authoritative movement → `unity-multiplayer`.

Depth: `references/movement_and_collision.md`,
`references/navmesh_and_ai.md`, `references/troubleshooting.md`, and the
exhaustive API in `references/api/`.
