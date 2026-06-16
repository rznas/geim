# The UObject / AActor / UActorComponent model

Doc-sourced from `references/api/` (the embedded UE 5.6/5.7 docs); not
compile-tested here (no engine installed). Grep the cited pages for fuller text.

## The three base types

- **`UObject`** — the root of (almost) everything in UE. Reflected, garbage-
  collected, serializable, supports networking. NOT in the world by itself. Use
  for data containers, subsystems, ability/effect objects, asset-like classes.
  Source: `api/Programming_with_C++_Unreal_Engine_Reflection_System_Objects.md`.
- **`AActor`** — a `UObject` that can be placed in or spawned into a level. Has a
  transform via its `RootComponent`, ticks, has a lifecycle (BeginPlay/Tick/
  EndPlay). Prefix `A`. Source: `api/…Gameplay_Framework_Actors.md`,
  `…Actor_Lifecycle.md`.
- **`UActorComponent`** — reusable behavior/data attached to an actor. The
  subclass `USceneComponent` adds a transform (so it has a location and can be
  attached in a hierarchy); `UPrimitiveComponent` (meshes, collision) adds
  geometry. Prefix `U`. Source: `api/Gameplay_Systems_Gameplay_Framework_Components.md`.

An actor is a **composition of components**, one of which is the
`RootComponent`. This is the UE analogue of Unity's GameObject+Components — and
unlike Godot, a "Player" is **one actor** with a capsule + mesh + movement +
your logic as sibling components, not a tree of nodes.

## Creating objects — never use `new`

> "All UObjects are memory managed by Unreal Engine and garbage collected… When
> you manually manage your memory by using new or delete, you can cause
> corruption to your memory." — `…Reflection_System_Objects.md`

| You want | Use | Where |
| --- | --- | --- |
| A component / subobject of an actor | `CreateDefaultSubobject<T>(TEXT("Name"))` | **Constructor only** |
| A plain UObject at runtime | `NewObject<T>(Outer)` | anywhere at runtime |
| An actor in the world | `GetWorld()->SpawnActor<T>(...)` | runtime |

`CreateDefaultSubobject` runs at engine startup as part of the Class Default
Object (CDO), so its constructor "should only work with local data or load
static assets" — no gameplay logic. See `…Reflection_System_Objects.md` and the
constructor row of the lifecycle table in `gameplay_framework.md`.

### Component creation + attachment — `api/…Programming_Quick_Start.md`, `…C++_Only.md`

```cpp
// In the constructor:
VisualMesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Mesh"));
VisualMesh->SetupAttachment(RootComponent);   // attach beneath the root

// Or make a component the root itself:
PointLight1 = CreateDefaultSubobject<UPointLightComponent>(TEXT("PointLight1"));
RootComponent = PointLight1;
Sphere1 = CreateDefaultSubobject<USphereComponent>(TEXT("Sphere1"));
Sphere1->InitSphereRadius(250.0f);
Sphere1->SetupAttachment(RootComponent);
```

## Garbage collection and the TObjectPtr rule

GC frees a UObject "when an Object is no longer referenced. This means that no
`UPROPERTY` pointers, engine containers, `TStrongObjectPtr`, or class instances
should have any strong references to them." (`…Reflection_System_Objects.md`)

Consequences you must internalize:

- A UObject pointer member that **keeps the object alive must be a `UPROPERTY`**.
  A raw pointer without `UPROPERTY` is not a GC root → the object can be collected
  while you still hold the (now dangling) pointer.
- Hold UPROPERTY object pointers in **`TObjectPtr<T>`** (the modern UE5 form; an
  old-style raw `T*` UPROPERTY still works and is what older docs show).
- **Weak references don't keep objects alive.** Use `TWeakObjectPtr<T>` when you
  want to *observe* without owning; check `IsValid()` before use. The lifecycle
  page recommends `TWeakObjectPtr<AActor>` over manual pending-kill checks.
- **Smart pointers (`TSharedPtr`/`TUniquePtr`) are NOT for UObjects** — they're
  for plain C++ (`F`-prefixed) types. See
  `api/…Reflection_System_Unreal_Smart_Pointer_Library.md`.
- Don't call `delete`. Destroy actors with `AActor::Destroy()`; the object is
  freed on the next GC pass once all references release.

## Naming prefixes (UHT requires them)

From `api/Programming_with_C++_Coding_Standard.md`:

| Prefix | Meaning | Example |
| --- | --- | --- |
| `U` | inherits `UObject` (incl. components) | `UStaticMeshComponent` |
| `A` | inherits `AActor` | `ACharacter` |
| `F` | plain struct / value type | `FVector`, `FString`, `FHitResult` |
| `T` | template | `TArray`, `TObjectPtr`, `TSubclassOf` |
| `E` | enum | `ETriggerEvent` |
| `I` | abstract interface | `IInteractable` |
| `S` | Slate widget | `SButton` |
| `b` | boolean variable | `bCanEverTick` |

"Unreal Header Tool requires the correct prefixes in most cases." Source files
are named to match the class **minus** the `A`/`U` prefix: `AActor` lives in
`Actor.h`/`Actor.cpp` (`api/…Gameplay_Classes.md`).

## Containers (UE's own, not the STL)

Source: `api/Programming_with_C++_Containers_in_Unreal_Engine*.md`.

- **`TArray<T>`** — the workhorse dynamic array. Value type (copying copies the
  elements; no shared state). `Add`/`Push` copies or moves; `Emplace` constructs
  in place (prefer `Emplace` for non-trivial types like `FString`); `AddUnique`,
  `Insert`, `SetNum`, `Append`, `Init`. Don't `new`/`delete` a TArray.
- **`TMap<K,V>`** — associative map; `Add(Key, Value)`, `Find`, `Contains`.
- **`TSet<T>`** — unique-element set.

```cpp
TArray<FString> Names;
Names.Add(TEXT("Hello"));     // temp FString then move
Names.Emplace(TEXT("World")); // construct directly — preferred
```

## String types — pick by purpose

Source: `api/…String_Handling*.md`.

| Type | Use it for | Notes |
| --- | --- | --- |
| **`FString`** | text you search / modify / build | owns its char array; the heaviest; `FString::Printf` |
| **`FName`** | identifiers, asset/bone names, frequent compares | immutable, case-insensitive, interned (fast `==`) |
| **`FText`** | **anything shown to a player** | localizable; `FText::FromString`, `INVTEXT` for culture-invariant |

Always wrap literals in `TEXT("...")` so they're TCHAR/Unicode, not ANSI.
Conversions (and their lossy-direction warnings) are tabulated in
`…String_Handling.md` (e.g. `FString -> FName` is lossy because FName is
case-insensitive).

## Coordinates note: Large World Coordinates

UE5 uses double-precision `FVector` (LWC) for large worlds. Most gameplay code is
unaffected, but mixing `float`/`double` vector math or assuming 32-bit can bite
huge maps — see `api/Gameplay_Systems_Large_World_Coordinates*.md` if your world
exceeds ~20 km from origin.
