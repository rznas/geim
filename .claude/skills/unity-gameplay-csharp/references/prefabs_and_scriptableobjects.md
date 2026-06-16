# Prefabs, instantiation & ScriptableObjects

Unity 6 (6000.x). Doc-sourced from the embedded Manual/ScriptReference in
`references/api/`; not compile-tested here (no Editor installed).

Two ways to author reusable content: **prefabs** (reusable GameObjects you spawn
at runtime) and **ScriptableObjects** (reusable data assets, not attached to any
GameObject). They solve different problems and are easy to conflate.

---

## Prefabs

A **prefab** is a saved GameObject (with all its components and child objects)
that you can instantiate many times at runtime. Source: `api/CreatingPrefabs.md`,
`api/instantiating-prefabs-intro.md`.

### Creating a prefab (Editor authoring)

`api/CreatingPrefabs.md`: configure a GameObject in the scene, then drag it into
the `Assets` folder in the Project window — Unity creates the prefab asset from
the GameObject, its components, and child GameObjects, and the original becomes an
instance of it.

> When replacing/saving over a prefab, Unity matches by **GameObject name** — so
> keep names unique within a prefab to avoid unpredictable matching
> (`api/CreatingPrefabs.md`).

### Spawning a prefab at runtime — the idiom

Your code needs a **reference** to the prefab. The standard pattern: a
serialized `GameObject` field you assign in the Inspector, then `Instantiate(...)`.

From `api/instantiating-prefabs-intro.md` (verbatim):

```csharp
using UnityEngine;
public class InstantiationExample : MonoBehaviour
{
    // Reference to the prefab. Drag a prefab into this field in the Inspector.
    public GameObject myPrefab;

    // This script will simply instantiate the prefab when the game starts.
    void Start()
    {
        // Instantiate at position (0, 0, 0) and zero rotation.
        Instantiate(myPrefab, new Vector3(0, 0, 0), Quaternion.identity);
    }
}
```

`Quaternion.identity` means "no rotation". `Instantiate` is inherited from
`UnityEngine.Object` (see the Static Methods table in `api/MonoBehaviour.md`:
*"Instantiate — Clones the object original and returns the clone."*). It returns
the clone, which you usually capture:

```csharp
GameObject currentEntity = Instantiate(entityToSpawn, spawnPoint, Quaternion.identity);
currentEntity.name = "Enemy" + instanceNumber;
```

(from the spawn-manager example in `api/class-ScriptableObject.md`). To get a
specific component on the clone, `Instantiate` a typed prefab or call
`GetComponent<T>()` on the result.

> **Tip — prefer `[SerializeField] private`** over `public` for the prefab
> reference if nothing else needs to read it (see SerializeField below). Public
> works and the docs show it, but exposing more than you must invites bugs.

### Destroying

Remove a spawned object (or a component) with `Object.Destroy` — inherited and
callable unqualified as `Destroy(...)`. `api/MonoBehaviour.md`: *"A MonoBehaviour
can be deleted with `Object.Destroy` … When the parent GameObject is destroyed
all components are automatically deleted."* Use `Destroy(gameObject)` to remove
the whole object the script is on. Avoid `DestroyImmediate` outside Edit-mode
tooling.

> **Gotcha:** after `Destroy`, the C# wrapper lingers until GC and compares
> `== null` as true, but **does not** support `?.` or `??`
> (`api/MonoBehaviour.md`). Always null-check with `== null`, never `?.`, on a
> possibly-destroyed Unity object.

---

## ScriptableObjects

A **ScriptableObject** is a serializable Unity type that lives as a **project
asset**, *not* attached to a GameObject. It is the right tool for shared/config
**data**: enemy stats, weapon definitions, level tables, game settings.

`api/class-ScriptableObject.md`: *"Unlike MonoBehaviours, ScriptableObjects are
not attached to GameObjects as components but exist in the project as assets…"*
The key win: one copy of the data in memory, referenced by many objects, instead
of every prefab instance carrying its own copy.

### Defining one

Derive from `ScriptableObject` and add `[CreateAssetMenu]` so you can make asset
instances from the **Assets > Create** menu. Verbatim from
`api/class-ScriptableObject.md`:

```csharp
using UnityEngine;
// Use the CreateAssetMenu attribute to allow creating instances of this ScriptableObject from the Unity Editor.
[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/SpawnManagerScriptableObject", order = 1)]
public class SpawnManagerScriptableObject : ScriptableObject
{
    public string prefabName;

    public int numberOfPrefabsToCreate;
    public Vector3[] spawnPoints;
}
```

> **Same rule as MonoBehaviour:** the file name must equal the class name. The
> page says so explicitly: **"The script file must have the same name as the
> class."**

### Using one

Reference the asset from a MonoBehaviour via a serialized field and read its
data. From the same page (trimmed):

```csharp
using UnityEngine;

public class ScriptableObjectManagedSpawner : MonoBehaviour
{
    public GameObject entityToSpawn;                       // a prefab
    public SpawnManagerScriptableObject spawnManagerValues; // the data asset

    void Start()
    {
        for (int i = 0; i < spawnManagerValues.numberOfPrefabsToCreate; i++)
        {
            GameObject currentEntity = Instantiate(
                entityToSpawn,
                spawnManagerValues.spawnPoints[i % spawnManagerValues.spawnPoints.Length],
                Quaternion.identity);
        }
    }
}
```

In the Inspector you drag the `.asset` instance into the
`Spawn Manager Values` field. Designers tune values on the asset without touching
code — this is the ScriptableObject "data-driven design" payoff.

### Editor vs runtime persistence

`api/class-ScriptableObject.md`: in a standalone Player at runtime you can only
**read** the asset's saved data. In the Editor, changes made via script in Edit
mode are **not** auto-saved — call `EditorUtility.SetDirty(theSO)` (Editor-only)
so Unity persists them. Don't rely on writing to a ScriptableObject as a runtime
save system in a build.

### Prefab vs ScriptableObject — which?

- Spawnable **thing in the world** (has a Transform, renderer, collider) →
  **prefab**, `Instantiate` it.
- Shared **data / config** with no presence in the scene → **ScriptableObject**,
  reference the asset.

---

## Hand-offs

- Lifecycle & component model → `lifecycle_and_components.md`.
- `[SerializeField]` details → `coroutines_and_events.md` (Inspector section) and
  `api/SerializeField.md`.
- Spawning that needs physics (Rigidbody on the clone) → `unity-physics-and-ai`.
