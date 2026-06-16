# Movement & collision (Unity 6, C#)

Doc-sourced from `references/api/`; not compile-tested here. Every signature
below is copied from an embedded ScriptReference page — the page name is cited
inline so you can re-grep it.

## The non-negotiable: Rigidbody physics goes in `FixedUpdate`

`Update` runs once per rendered frame (variable rate). `FixedUpdate` runs on the
fixed physics timestep (`Time.fixedDeltaTime`). The solver steps between
`FixedUpdate` calls, so **all force/velocity writes and physics queries belong
in `FixedUpdate`.** Unity's own `Rigidbody.AddForce`, `Rigidbody.MovePosition`,
`Rigidbody-linearVelocity`, and `Physics.Raycast` examples all use
`FixedUpdate` — see those pages in `api/`.

`CharacterController.Move`, by contrast, is *not* solver-driven and Unity's
example calls it from `Update` (`api/CharacterController.Move.md`).

---

## 1. Rigidbody (Dynamic 3D body)

Three ways to move it, in rough order of "lets the physics feel natural":

```csharp
// api/Rigidbody.AddForce.md
rb.AddForce(transform.up * thrust);                 // continuous, mass-scaled (ForceMode.Force)
rb.AddForce(0, 0, thrust, ForceMode.Impulse);       // instant kick (ignores timestep)
```

`ForceMode` options (from `api/Rigidbody.AddForce.md`):

| Mode | Interprets input as | Mass-dependent? | Timestep-dependent? |
|------|---------------------|-----------------|----------------------|
| `ForceMode.Force` (default) | force in Newtons | yes | yes |
| `ForceMode.Acceleration` | m/s² | no | yes |
| `ForceMode.Impulse` | newton-seconds | yes | no |
| `ForceMode.VelocityChange` | direct Δvelocity (m/s) | no | no |

```csharp
// api/Rigidbody.MovePosition.md — kinematic-style move, respects interpolation
void FixedUpdate()
{
    Vector3 input = new Vector3(/* read input */);
    rb.MovePosition(transform.position + input * Time.fixedDeltaTime * moveSpeed);
}
```

```csharp
// api/Rigidbody-linearVelocity.md — set velocity DIRECTLY only for instant changes
void FixedUpdate()
{
    if (jumpPressed)
        rb.linearVelocity = new Vector3(0, 10, 0);  // immediate jump
}
```

Unity 6 renamed `Rigidbody.velocity` → **`Rigidbody.linearVelocity`** (verified:
`api/Rigidbody-linearVelocity.md` exists; `Rigidbody-velocity.md` does not). The
docs warn: "In most cases you should not modify the velocity directly … use
AddForce instead. Do not set the linear velocity of an object every physics
step."

**To teleport** a Rigidbody once, set `rb.position` (or do it in `Awake`/`Start`
before physics runs) — `api/Rigidbody.MovePosition.md` says use `Rigidbody.position`
for teleports, not `MovePosition`. Never write `transform.position` per frame.

Toggle gravity per body: `rb.useGravity` (`api/Rigidbody-useGravity.md`). Lock a
body with `rb.isKinematic = true` — then forces/collisions/joints stop affecting
it and you drive it by `transform.position` / `MovePosition`
(`api/Rigidbody-isKinematic.md`).

## 2. Rigidbody2D (Dynamic 2D body)

Same model, 2D types. `Vector2`, `ForceMode2D`, `linearVelocity` (also renamed —
`api/Rigidbody2D-linearVelocity.md`; no `Rigidbody2D-velocity.md`).

```csharp
// api/Rigidbody2D.AddForce.md — default mode is ForceMode2D.Force (over time, uses mass)
rb2D.AddForce(transform.up * thrust);
rb2D.AddForce(dir * impulse, ForceMode2D.Impulse);
```

Gravity in 2D is global (`Physics2D`) scaled per body by
`rb2D.gravityScale` — set it to 0 for a flyer/top-down character
(`api/Rigidbody2D-gravityScale.md`). Body type is `rb2D.bodyType`
(`RigidbodyType2D.Dynamic / Kinematic / Static`,
`api/Rigidbody2D-bodyType.md`).

## 3. CharacterController (steered movement, 3D)

Not a Rigidbody. "Not affected by forces … will only move when you call the Move
function … does not use gravity" — you supply gravity yourself. From
`api/CharacterController.Move.md` (verbatim shape):

```csharp
using UnityEngine;

public class PlayerMove : MonoBehaviour
{
    public CharacterController controller;
    float playerSpeed = 5f, jumpHeight = 1.5f, gravityValue = -9.81f;
    Vector3 playerVelocity;
    bool groundedPlayer;

    void Update()
    {
        groundedPlayer = controller.isGrounded;       // api/CharacterController-isGrounded.md
        if (groundedPlayer && playerVelocity.y < -2f)
            playerVelocity.y = -2f;                    // stick to ground

        Vector3 move = new Vector3(/* x input */, 0, /* z input */);
        if (jumpPressed && groundedPlayer)
            playerVelocity.y = Mathf.Sqrt(jumpHeight * -2f * gravityValue);

        playerVelocity.y += gravityValue * Time.deltaTime;          // apply gravity yourself
        Vector3 finalMove = move * playerSpeed + Vector3.up * playerVelocity.y;
        controller.Move(finalMove * Time.deltaTime);                // single Move call
    }
}
```

`Move` returns `CollisionFlags` (None/Sides/Above/Below) telling you where you
hit. `controller.collisionFlags` holds the last one. For
gravity-only movement Unity also offers `controller.SimpleMove(velocity)`
(applies gravity automatically) — `api/CharacterController.md`.

## 4. Colliders, triggers, and collision callbacks

Add a `Collider` (BoxCollider, SphereCollider, CapsuleCollider, MeshCollider,
TerrainCollider — see `api/class-BoxCollider.md` etc.) or `Collider2D`. A
collider with no Rigidbody on it or its parent is **static** geometry.

`isTrigger` (`api/Collider.md` → properties) makes it a non-solid overlap volume.

| You want | Callback | Arg | Requirement |
|----------|----------|-----|-------------|
| Solid contact (3D) | `OnCollisionEnter(Collision c)` | `Collision` (contacts, `relativeVelocity`) | one body non-kinematic Rigidbody |
| Overlap / trigger (3D) | `OnTriggerEnter(Collider other)` | `Collider` | one side `isTrigger`, one side has a Rigidbody |
| Solid contact (2D) | `OnCollisionEnter2D(Collision2D c)` | `Collision2D` | one body non-kinematic Rigidbody2D |
| Overlap / trigger (2D) | `OnTriggerEnter2D(Collider2D other)` | `Collider2D` | one side `isTrigger`, one side has a Rigidbody2D |

(Sources: `api/Collider.OnCollisionEnter.md`, `Collider.OnTriggerEnter.md`,
`Collider2D.OnCollisionEnter2D.md`, `Collider2D.OnTriggerEnter2D.md`.) Each also
has `...Exit` / `...Stay` variants.

```csharp
// api/Collider.OnCollisionEnter.md (verbatim)
void OnCollisionEnter(Collision collision)
{
    if (collision.relativeVelocity.magnitude > 2)
        audioSource.Play();
    ContactPoint contact = collision.contacts[0];   // contact point + normal
}

// api/Collider.OnTriggerEnter.md (verbatim)
void OnTriggerEnter(Collider other)
{
    // 'other' is the collider that entered this trigger
}
```

**The #1 silence cause:** a trigger needs `isTrigger = true` *and* a Rigidbody on
at least one of the pair. Two bare static colliders never raise events.

## 5. Layers, the Layer Collision Matrix, and LayerMasks

Two different layer systems people conflate:

**(a) What physically collides** — the **Layer Collision Matrix** in Project
Settings > Physics (`api/class-PhysicsManager.md`: "Layer Collision Matrix —
Define how the layer-based collision detection system behaves … check their
respective checkboxes"). If a layer pair is unchecked there, their colliders
pass through and no trigger fires, no matter your code. Toggle a pair at runtime:

```csharp
// api/Physics.IgnoreLayerCollision.md
Physics.IgnoreLayerCollision(0, 8);   // ignore all collisions between layer 0 and layer 8
bool ignored = Physics.GetIgnoreLayerCollision(0, 8);
```

2D has its own matrix (Physics 2D settings) and
`Physics2D.IgnoreLayerCollision`.

**(b) What a raycast/query considers** — a `LayerMask`. Independent of the
matrix. Build masks by name:

```csharp
// api/Physics.Raycast.md
LayerMask mask = LayerMask.GetMask("Wall", "Character");
```

Define layer names in the Tags & Layers project settings so the mask reads as
intent, not a magic bit.

## 6. Raycasts (line of sight, ground checks, shooting)

3D — returns `bool`, fills a `RaycastHit` via `out`
(`api/Physics.Raycast.md`, verbatim):

```csharp
void FixedUpdate()
{
    RaycastHit hit;
    Vector3 dir = transform.TransformDirection(Vector3.forward);
    if (Physics.Raycast(transform.position, dir, out hit, Mathf.Infinity, mask))
    {
        Debug.DrawRay(transform.position, dir * hit.distance, Color.yellow);
        // hit.collider, hit.point, hit.normal, hit.distance
    }
}
```

Overloads: `Physics.Raycast(origin, dir)`, `(origin, dir, maxDistance)`,
`(ray)`, `(ray, out hit, maxDistance, layerMask, queryTriggerInteraction)`. A
final `QueryTriggerInteraction` arg controls whether triggers count.
**Caveat from the docs:** a raycast that *starts inside* a collider won't detect
that collider.

2D — returns a `RaycastHit2D` (truthy if it hit), `api/Physics2D.Raycast.md`:

```csharp
RaycastHit2D hit = Physics2D.Raycast(transform.position, -Vector2.up, distance, mask);
if (hit)   // RaycastHit2D has an implicit bool — null collider means miss
{
    float d = Mathf.Abs(hit.point.y - transform.position.y);
}
```

For "all hits" use `Physics.RaycastAll` / `Physics2D.RaycastAll`
(`api/Physics.RaycastAll.md`, `Physics2D.RaycastAll.md`). For perf, the
non-allocating `RaycastNonAlloc` / list overloads avoid per-call GC
(`api/physics-optimization-raycasts-queries.md`).

## Quick recipes

- **Player you fully control, no bounce:** `CharacterController` + `Move` in `Update`, gravity by hand.
- **Player that should be shoved by explosions:** `Rigidbody` + `AddForce` in `FixedUpdate`.
- **Bullet:** small `Rigidbody` with `AddForce(..., ForceMode.Impulse)`, or a raycast per frame (hitscan).
- **Pickup / damage volume:** `Collider` `isTrigger=true` + a Rigidbody (often kinematic) on the moving side; read `OnTriggerEnter`.
- **Floor / wall:** `Collider` on a static object, no Rigidbody.
- **Ground check:** short `Physics.Raycast` straight down with a "Ground" `LayerMask`.

See `references/navmesh_and_ai.md` for getting AI agents to *move toward* things,
and `references/troubleshooting.md` when none of it works.
