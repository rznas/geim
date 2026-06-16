# Troubleshooting — Unity gameplay C#

Unity 6 (6000.x). Grounded in the embedded `references/api/` docs; not
compile-tested here (no Editor installed). These are the handful of mistakes
that account for most "it compiles but does nothing" gameplay bugs.

---

## 1. "Can't add script behaviour … name does not match the name of the file"

**Symptom:** the script won't attach to a GameObject in the Inspector; or it
attaches but shows up as a broken/`Missing (Mono Script)` component; or you get a
console **warning** about an ambiguous class.

**Cause:** the **file name does not equal the class name**. For a
`MonoBehaviour`/`ScriptableObject`, Unity resolves the attachable component by the
file name. `api/class-ScriptableObject.md`: *"The script file must have the same
name as the class."* (The Manual's `naming-scripts` page notes Unity *can*
sometimes still resolve a mismatched class, but with limitations and a warning,
and the Editor refuses to attach a mismatched script — don't rely on it.)

**Fix:** rename so `Foo.cs` ↔ `public class Foo : MonoBehaviour`. Renaming the
class? Rename the file too (and vice-versa). `scripts/new_monobehaviour.sh`
guarantees this and rejects illegal identifiers.

---

## 2. `GetComponent<T>()` returns null → `NullReferenceException`

**Symptom:** `NullReferenceException` on a line that uses a component reference.

**Cause:** `GetComponent<T>()` returns **`null`** when no component of type `T`
is on **that** GameObject (`api/Component.GetComponent.md`). Common reasons:
- The component is on a **different** object (a child/parent/sibling object), so
  `GetComponent` on `this` finds nothing — use `GetComponentInChildren<T>()` /
  `GetComponentInParent<T>()`, or get a reference to the right object first.
- You called it too early / the component isn't added yet.
- For a script type, `api/Component.GetComponent.md`: if the type is a
  MonoBehaviour and its script can't be loaded, this returns `null`.

**Fix:** null-check, or use the allocation-free `TryGetComponent`
(`api/Component.TryGetComponent.md`):

```csharp
if (TryGetComponent<Rigidbody>(out var rb))
    rb.linearVelocity = Vector3.zero;
else
    Debug.LogWarning("No Rigidbody on " + name);
```

> Do **not** use `?.` / `??` on a possibly-destroyed Unity object — `api/MonoBehaviour.md`
> warns those operators are not supported; the object compares `== null` but the
> null-conditional operators bypass Unity's fake-null. Use `== null`.

---

## 3. Coroutine "does nothing" — never started

**Symptom:** you wrote an `IEnumerator` method and the effect never happens.

**Cause:** calling the coroutine method (`Fade();`) only creates the iterator. It
does not run until you pass it to `StartCoroutine` (`api/Coroutines.md`).

**Fix:**

```csharp
StartCoroutine(Fade());   // not: Fade();
```

Related: a coroutine **stops** when the GameObject deactivates or the object is
`Destroy`ed, but **not** when you merely disable the component (`enabled = false`)
— `api/Coroutines.md`. If yours stopped unexpectedly, check whether the object
got deactivated.

---

## 4. Physics is jittery / forces ignored → wrong update function

**Symptom:** Rigidbody movement stutters, behaves differently at different frame
rates, or forces seem ignored.

**Cause:** doing physics in `Update` instead of `FixedUpdate`.
`api/MonoBehaviour.FixedUpdate.md`: *"Use `FixedUpdate` to perform physics system
calculations. For example, use `FixedUpdate` when applying a force to a
Rigidbody."* `FixedUpdate` runs on the fixed physics tick; `Update` runs per
rendered frame and is not synced to the physics step.

**Fix:** Rigidbody forces/velocity → `FixedUpdate`. Input reads + non-physics
visuals → `Update`. Camera that follows a physics object → `LateUpdate`
(`api/MonoBehaviour.LateUpdate.md`). Detailed movement is in `unity-physics-and-ai`.

---

## 5. Frame-rate-dependent motion (too fast on fast PCs)

**Symptom:** the object moves/rotates faster on a high-FPS machine.

**Cause:** per-frame motion in `Update` not scaled by time.

**Fix:** multiply by `Time.deltaTime` (`api/Time-deltaTime.md`):

```csharp
transform.Translate(Vector3.right * speed * Time.deltaTime);  // not: * speed
```

Inside `FixedUpdate`, `Time.deltaTime` already returns `Time.fixedDeltaTime`
(`api/Time-deltaTime.md`), so either reads correctly there.

---

## 6. A field doesn't show in the Inspector

**Symptom:** you added a field but it isn't editable in the Inspector.

**Cause:** Unity only serializes `public` fields by default
(`api/SerializeField.md`). A plain `private` field is hidden.

**Fix:** add `[SerializeField]` to expose a private field without making it
public (preferred), or make it `public`:

```csharp
[SerializeField] private float speed = 5f;
```

Also won't show: properties (`{ get; set; }`), `static`, `readonly`, and
unsupported types — see "Serialization rules" referenced from
`api/SerializeField.md`.

---

## 7. `Start` reads another object that "isn't ready" — or `Awake` order bites

**Symptom:** a reference set by another object's `Awake` is null when you read it.

**Cause:** `Awake` order across objects is **not deterministic**
(`api/MonoBehaviour.Awake.md`). Reading another object's `Awake`-initialized state
from your own `Awake` is a race.

**Fix:** set up an object's **own** references in `Awake`; read **other** objects'
references in `Start`, which runs only after every `Awake` completes
(`api/MonoBehaviour.Start.md`). For hard ordering needs, use the Script Execution
Order setting.

---

## 8. Used the C# constructor for setup

**Symptom:** values set in a `MyScript()` constructor are wrong/undefined.

**Cause:** `api/MonoBehaviour.Awake.md`: *"Use `Awake` instead of the constructor
for initialization, as the serialized state of the component is undefined at
construction time."* Unity constructs MonoBehaviours itself; don't rely on the
constructor.

**Fix:** move initialization into `Awake` (own state) or `Start` (cross-object).

---

## 9. Scene won't load by name

**Symptom:** `SceneManager.LoadScene("Level2")` does nothing / errors.

**Causes & fixes** (`api/SceneManagement.SceneManager.LoadScene.md`):
- The scene must be **added to Build Settings**; otherwise it won't load by
  name/index in a build.
- Pass the name **without** the `.unity` extension; name is case-insensitive
  (except from an AssetBundle).
- It loads on the **next frame**, not immediately — don't assume the new scene's
  objects exist on the same line.
- For loading without a frame hitch, prefer `LoadSceneAsync`
  (`api/SceneManagement.SceneManager.LoadSceneAsync.md`).
- Use `LoadSceneMode.Additive` to keep the current scene loaded too.

```csharp
using UnityEngine.SceneManagement;
SceneManager.LoadScene("Level2");                       // single (replaces current)
SceneManager.LoadScene("HUD", LoadSceneMode.Additive);  // keep current, add HUD
```

---

## When to reach for another skill

- Rigidbody/CharacterController movement, collisions, triggers, raycasts, NPC AI
  → `unity-physics-and-ai`.
- Menus, HUD, buttons, sliders → `unity-ui-csharp`.
- Importing/animating models & sprites → `unity-art-pipeline`.
- Headless/CI verification & automated tests → `unity-qa-testing`.
- Project won't build / SDK errors → `unity-project-setup`.
