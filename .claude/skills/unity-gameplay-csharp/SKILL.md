---
name: unity-gameplay-csharp
description: >
  Write gameplay logic for a Unity 6 (6000.x) game in C# — MonoBehaviour
  scripts, the GameObject + Component model, the lifecycle (Awake/OnEnable/
  Start/Update/FixedUpdate/LateUpdate/OnDisable/OnDestroy), GetComponent /
  AddComponent, prefabs + Instantiate/Destroy, ScriptableObjects, the
  Inspector + [SerializeField], coroutines (IEnumerator + yield return), events
  (UnityEvent / C# Action), and scene loading (SceneManager). Use this whenever
  you are implementing player controllers, game rules, mechanics, state,
  spawning, timers, scene transitions, or wiring components together in a Unity
  C# project. Reach for it any time you are writing a `class : MonoBehaviour`,
  calling `GetComponent<T>()` / `Instantiate`, starting a coroutine, exposing a
  field in the Inspector, defining a ScriptableObject data asset, or the script
  "won't attach" / "compiles but does nothing". It has the verified Unity 6 C#
  idioms (the component model vs Godot's node tree, the file-name-must-match-
  class-name rule, Update vs FixedUpdate, [SerializeField] vs public,
  StartCoroutine) sourced from the embedded Unity 6 ScriptReference. Covers
  Gameplay Programmer and Systems Designer implementation work. Assumes a
  project from unity-project-setup already builds.
---

# Unity Gameplay in C#

Implement gameplay: C# scripts (MonoBehaviours) attached as **Components** to
**GameObjects**, the per-frame lifecycle, spawning prefabs, data in
ScriptableObjects, coroutines, and events. This is the logic spine the
physics/UI/audio/art skills attach to — get the component model and lifecycle
right and the rest slots in cleanly.

> Unity 6 (6000.x). C# snippets are **doc-sourced from the embedded Unity 6
> ScriptReference (`references/api/`) and compile-verified against Unity
> 6000.4.10f1** — the `new_monobehaviour.sh` output and a PlayMode test
> compiled + ran headless with exit 0. When in doubt, grep `references/api/` and
> copy the real signature — Unity ≠ Godot in nearly every detail.

## The one thing that trips everyone up

**Two traps, and they are different from Godot:**

1. **The component model.** A GameObject is a near-empty container; behaviour and
   data live in **Components attached to it** — including your script, which is a
   Component because it derives from `MonoBehaviour`
   (`references/api/MonoBehaviour.md`: *"MonoBehaviours always exist as a
   Component of a GameObject"*). A "Player" is one GameObject with a Transform +
   renderer + collider + Rigidbody + your `PlayerController`, all **siblings**.
   You talk to siblings with `GetComponent<T>()`. There is no node tree of
   scripts and no `GetNode` — composition by components, not by nodes.

2. **The script file name MUST equal the class name.**
   `references/api/class-ScriptableObject.md` states it: *"The script file must
   have the same name as the class."* `PlayerController.cs` ↔
   `public class PlayerController : MonoBehaviour`. Mismatch → a console warning
   and the Editor refusing to attach it (*"Can't add script behaviour … the
   script's name does not match the name of the file"*). Rename one, rename the
   other. The scaffold script enforces this.

Two more that cost the most time after those: **`[SerializeField] private`** to
expose a field in the Inspector without making it public
(`references/api/SerializeField.md`), and **coroutines do nothing unless you pass
them to `StartCoroutine`** (`references/api/Coroutines.md`). All four are
covered in `references/troubleshooting.md`.

## The lifecycle (verified message functions)

Unity calls these by name if you define them — you do **not** mark them
`override`. Each row is grounded in its `references/api/` page (full table +
ordering rules in `references/lifecycle_and_components.md`).

| Function | When | Frequency | Use for |
| --- | --- | --- | --- |
| `Awake()` | On load, before any `Start`; runs even if disabled | Once | This object's own setup; cache `GetComponent`s. *Not* the C# constructor. |
| `OnEnable()` | Each time component enables | Per enable | Subscribe to events. |
| `Start()` | First frame enabled, after **all** `Awake`s | Once | Logic depending on *other* objects (now initialized). |
| `FixedUpdate()` | Fixed physics tick (`Time.fixedDeltaTime`); 0..n× per frame | Fixed | **Rigidbody forces/velocity.** |
| `Update()` | Every rendered frame | Per frame | Game logic, input; scale motion by `Time.deltaTime`. |
| `LateUpdate()` | Every frame, after all `Update`s | Per frame | Camera follow; read final positions. |
| `OnDisable()` | Component disabled / object deactivates | Per disable | Unsubscribe; coroutines stop here. |
| `OnDestroy()` | Object destroyed / scene unloads | Once | Final cleanup. |

**Update vs FixedUpdate** is the big one: physics writes (`Rigidbody`) go in
`FixedUpdate` (`references/api/MonoBehaviour.FixedUpdate.md`); per-frame logic in
`Update`, scaled by `Time.deltaTime` so it's frame-rate independent
(`references/api/Time-deltaTime.md`). `Awake` order across objects is **not**
deterministic — set own refs in `Awake`, read other objects' refs in `Start`
(`references/api/MonoBehaviour.Awake.md`, `…Start.md`).

## Verified idioms

### Minimal MonoBehaviour (per-frame, time-scaled) — `api/Time-deltaTime.md`

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

### Reach a sibling component — `api/Component.GetComponent.md` / `…TryGetComponent.md`

```csharp
// Returns null if absent — null-check it, or use TryGetComponent.
var hinge = GetComponent<HingeJoint>();
if (hinge != null) hinge.useSpring = false;

if (TryGetComponent<HingeJoint>(out var h))   // allocation-free "if it exists"
    h.useSpring = false;
```

### Expose a private field in the Inspector — `api/SerializeField.md`

```csharp
[SerializeField] private float speed = 5f;   // editable in Inspector, still private
```

### Spawn a prefab — `api/instantiating-prefabs-intro.md`

```csharp
public class Spawner : MonoBehaviour
{
    public GameObject myPrefab;               // drag a prefab in the Inspector
    void Start()
    {
        Instantiate(myPrefab, new Vector3(0, 0, 0), Quaternion.identity);
    }
}
```

`Quaternion.identity` = no rotation. `Destroy(gameObject)` removes an object;
after destroy a Unity object compares `== null` but does **not** support `?.`/`??`
(`api/MonoBehaviour.md`).

### Coroutine — must be started — `api/Coroutines.md`

```csharp
IEnumerator Fade()
{
    for (float a = 1f; a >= 0; a -= 0.1f)
        yield return new WaitForSeconds(0.1f);   // yield return null = next frame
}
void Update()
{
    if (Input.GetKeyDown("f")) StartCoroutine(Fade());   // calling Fade() alone does nothing
}
```

### ScriptableObject data asset — `api/class-ScriptableObject.md`

```csharp
[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/EnemyStats", order = 1)]
public class EnemyStats : ScriptableObject   // file name == class name, again
{
    public int health;
    public float moveSpeed;
}
```

A ScriptableObject is shared **data** living as a project asset (not on a
GameObject); reference it from a `[SerializeField]` field so designers tune it
without touching code.

### Load a scene — `api/SceneManagement.SceneManager.LoadScene.md`

```csharp
using UnityEngine.SceneManagement;
SceneManager.LoadScene("Level2");                       // must be in Build Settings; no .unity ext
SceneManager.LoadScene("HUD", LoadSceneMode.Additive);  // keep current scene loaded
```

## Scaffolding a script

`scripts/new_monobehaviour.sh <ClassName> [outdir]` writes a correctly-formed
`public class <ClassName> : MonoBehaviour` with lifecycle stubs and a
`[SerializeField]` example, into `<ClassName>.cs` (file name == class name,
enforced; illegal identifiers rejected). It writes the file only — no editor,
import, or compile (none is installed). Then build/verify with the project-setup
and QA skills.

`scripts/unity.sh` is the shared Editor wrapper (resolves a Unity 6 binary via
`$UNITY_PATH` / Hub locations / PATH). It exits 127 with install instructions if
no Editor is found; with a Unity 6 install present the scaffolds here are
compile-verified (6000.4.10f1).

## Depth (in `references/`)

- `lifecycle_and_components.md` — full lifecycle table + ordering rules; the
  GameObject/Component model; how it differs from Godot's node tree.
- `prefabs_and_scriptableobjects.md` — creating/spawning prefabs, `Instantiate`/
  `Destroy`, ScriptableObject data assets, prefab-vs-SO decision.
- `coroutines_and_events.md` — coroutines (start/stop/perf), `[SerializeField]`/
  serialization, UnityEvent vs C# `Action` vs `SendMessage`.
- `troubleshooting.md` — the 9 errors that cause most gameplay bugs.
- `api/` — the exhaustive embedded Unity 6 ScriptReference for this domain
  (MonoBehaviour + every message, GameObject, Transform, GetComponent, prefabs,
  ScriptableObject, coroutines, Time, SceneManager, serialization, events).

## What this covers / hands off to

Covers **Gameplay Programmer** and **Systems Designer** implementation work
(player controls, mechanics, rules, progression/economy wiring). Hands off to:

- `unity-project-setup` — the buildable project this assumes (start there first).
- `unity-physics-and-ai` — Rigidbody/CharacterController movement, collisions,
  triggers, raycasts, NavMesh, NPC AI.
- `unity-ui-csharp` — menus, HUD, buttons/sliders (and wiring a UnityEvent to a
  Button).
- `unity-art-pipeline` — importing & driving models/sprites/animation from C#.
- `unity-audio` — playing clips, music, mixer routing.
- `unity-qa-testing` — headless/CI verification and automated tests.
