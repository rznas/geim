# MonoBehaviour lifecycle & the component model

Unity 6 (6000.x). Doc-sourced from the embedded ScriptReference/Manual in
`references/api/`; not compile-tested here (no Editor installed).

This is the spine of Unity gameplay code. Get the component model and the
lifecycle right and everything else (physics, UI, audio) attaches cleanly.

---

## The component model — the mental model

A Unity scene is a flat-ish hierarchy of **GameObjects**. A GameObject is, on
its own, almost nothing — it is a container. Behaviour and data come from
**Components attached to it**. This is composition, not inheritance.

- A **GameObject** always has exactly one **Transform** (position/rotation/scale
  + parenting). You cannot remove it or make a GameObject without one — see
  `api/class-Transform.md`: *"A GameObject always has a Transform component
  attached: you can't remove a Transform or create a GameObject without a
  Transform component."*
- A **Component** is a thing bolted onto a GameObject: a `MeshRenderer`, a
  `Rigidbody`, a `Collider`, or **your script**.
- Your script is a Component because it derives from **MonoBehaviour**, which is
  itself a Component. `api/MonoBehaviour.md`: *"MonoBehaviours always exist as a
  Component of a GameObject, and can be instantiated with
  `GameObject.AddComponent`."*

So a "Player" is not one class — it is a GameObject with a Transform + a
SpriteRenderer/MeshRenderer + a Collider + a Rigidbody + your `PlayerController`
MonoBehaviour, all siblings on the same object. You build behaviour by composing
components and having your script reach for the others with `GetComponent<T>()`.

> **Coming from Godot?** Godot's node *is* the unit of behaviour (a script
> attaches to a node and the node has the behaviour). Unity inverts this: the
> GameObject is a dumb bag, and the **Components** carry behaviour. There is no
> "node tree of scripts"; there is one object with many components side by side.
> `GetComponent<T>()` is how you talk to a sibling component — there is no
> `GetNode`.

### Reaching other components

From your MonoBehaviour, these inherited members are always available (see the
"Inherited Members" table in `api/MonoBehaviour.md`):

- `transform` — this object's Transform.
- `gameObject` — the GameObject this component is attached to.
- `GetComponent<T>()` — find a sibling component (see
  `references/api/Component.GetComponent.md`).
- `TryGetComponent<T>(out T)` — non-allocating "find if present"
  (`api/Component.TryGetComponent.md`).
- `GetComponentInChildren<T>()` / `GetComponentInParent<T>()` — search the
  hierarchy.

---

## THE rule: file name must match the class name

For a `MonoBehaviour` (and a `ScriptableObject`), **the script file name must
equal the class name**. Unity uses the file name as the class name at creation,
and resolves the attachable component by that name.

`api/class-ScriptableObject.md` states it flatly: **"The script file must have
the same name as the class."** The Manual's `naming-scripts` page adds the
nuance: Unity *can* still resolve the type if the file name differs, but with
limitations (if multiple classes are defined, it picks the one matching the file
name; ambiguous cases get a **warning**), and when you try to attach a mismatched
script in the Editor you get **"Can't add script behaviour … the script's name
does not match the name of the file."**

Practical rule, no exceptions worth the risk: **`PlayerController.cs` ↔
`public class PlayerController`.** Rename one, rename the other.
`scripts/new_monobehaviour.sh` enforces this.

---

## The lifecycle (event/message functions)

Unity calls these "message" functions on your MonoBehaviour by name if you
define them (you do **not** mark them `override`; they are not virtual — Unity
calls them via its own dispatch). Every row below is verified against its
`api/` page.

| Function | When Unity calls it | Frequency | Use it for | Source page |
| --- | --- | --- | --- | --- |
| `Awake()` | When the instance loads, before any `Start`. Runs even if the component is **disabled**, as long as its GameObject is active. | Once per instance lifetime | Initialize this object's own state; cache `GetComponent` refs. | `api/MonoBehaviour.Awake.md` |
| `OnEnable()` | Each time the component becomes enabled/active. Always after `Awake`, before `Start` on entering Play mode. | Every enable | Subscribe to events; re-init on re-activation. | `api/MonoBehaviour.OnEnable.md` |
| `Start()` | On the first frame the component is enabled, **after every object's `Awake`** has run. | Once (per enable-from-disabled-start) | Logic that depends on *other* objects already being initialized. Can be a coroutine (`IEnumerator Start()`). | `api/MonoBehaviour.Start.md` |
| `FixedUpdate()` | On the fixed physics tick, interval `Time.fixedDeltaTime` (default 0.02s = 50/s). May run 0, 1, or many times per rendered frame. | Fixed-rate | **Physics**: `Rigidbody` forces/velocity. Use `Time.fixedDeltaTime`. | `api/MonoBehaviour.FixedUpdate.md` |
| `Update()` | Every rendered frame, if the component is enabled. | Per frame | Game logic, input polling, non-physics motion. Scale by `Time.deltaTime`. | `api/MonoBehaviour.Update.md` |
| `LateUpdate()` | Every frame, **after all `Update` calls**. | Per frame | Camera follow / anything that must read final positions of the frame. | `api/MonoBehaviour.LateUpdate.md` |
| `OnDisable()` | When the component is disabled or its GameObject deactivates. **Coroutines on this object stop here.** | Every disable | Unsubscribe events; stop work. | `api/MonoBehaviour.OnDisable.md` |
| `OnDestroy()` | Once, when the object is being destroyed (or scene unloads). | Once | Final cleanup. | `api/MonoBehaviour.OnDestroy.md` |

Physics/trigger callbacks (`OnCollisionEnter`, `OnTriggerEnter`, 2D variants)
and input/mouse callbacks (`OnMouseDown`, …) are also messages — see the
"Messages" table in `api/MonoBehaviour.md`. Collisions/triggers belong to
`unity-physics-and-ai`.

### Update vs FixedUpdate vs LateUpdate — the one people get wrong

- **`Update`** runs once per *rendered frame*. Frame rate varies, so any motion
  here must be multiplied by `Time.deltaTime` to stay frame-rate independent
  (`api/Time-deltaTime.md`; e.g. `transform.Rotate(0, 0, speed * Time.deltaTime)`).
- **`FixedUpdate`** runs on the *physics clock*, not the frame clock — it can be
  called zero, one, or several times per frame "depending on the frame rate and
  simulation needs" (`api/MonoBehaviour.FixedUpdate.md`). **Apply forces to a
  `Rigidbody` here**, not in `Update`. Inside `FixedUpdate`, `Time.deltaTime`
  *returns* `Time.fixedDeltaTime` (`api/Time-deltaTime.md`), so either is correct
  there.
- **`LateUpdate`** runs after every `Update`. The canonical use is a follow
  camera, "because it tracks objects that might have moved inside Update"
  (`api/MonoBehaviour.LateUpdate.md`).

### `Awake` vs `Start` ordering

- `Awake` order across objects is **not deterministic** — don't assume one
  object's `Awake` ran before another's (`api/MonoBehaviour.Awake.md`).
- `Start` runs only after *every* object's `Awake` has completed
  (`api/MonoBehaviour.Start.md`). So: set up an object's *own* refs in `Awake`;
  read *other* objects' refs in `Start`. Use `Awake` instead of a C# constructor
  — the serialized state is undefined at construction time
  (`api/MonoBehaviour.Awake.md`).

---

## Verified idioms

### A minimal MonoBehaviour (constant rotation, `Time.deltaTime`)

From `api/Time-deltaTime.md` (verbatim):

```csharp
using UnityEngine;
// Rotate around the z axis at a constant speed
public class ConstantRotation : MonoBehaviour
{
    public float degreesPerSecond = 2.0f;
    void Update()
    {
        transform.Rotate(0, 0, degreesPerSecond * Time.deltaTime);
    }
}
```

### Get a sibling component (null-check it — see troubleshooting)

From `api/Component.GetComponent.md`:

```csharp
void Start()
{
    HingeJoint hinge = GetComponent<HingeJoint>();
    if (hinge != null)
    {
        hinge.useSpring = false;
    }
}
```

`TryGetComponent` is the allocation-free "if it exists" form
(`api/Component.TryGetComponent.md`):

```csharp
if (TryGetComponent<HingeJoint>(out HingeJoint hinge))
{
    hinge.useSpring = false;
}
```

### Add a component at runtime

From `api/GameObject.AddComponent.md` (use the generic form):

```csharp
SphereCollider sc = gameObject.AddComponent<SphereCollider>();
```

There is no "RemoveComponent" — remove with `Object.Destroy(theComponent)`
(`api/GameObject.AddComponent.md`).

---

## Hand-offs

- Prefabs, instantiation, ScriptableObjects → `prefabs_and_scriptableobjects.md`.
- Coroutines, events, UnityEvent → `coroutines_and_events.md`.
- Common errors → `troubleshooting.md`.
- Rigidbody movement / collisions / triggers → the `unity-physics-and-ai` skill.
