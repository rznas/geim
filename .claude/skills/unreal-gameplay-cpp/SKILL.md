---
name: unreal-gameplay-cpp
description: >
  Write gameplay logic for an Unreal Engine 5.7 game in C++ — the UObject /
  AActor / UActorComponent model, the reflection macros (UCLASS / USTRUCT /
  UENUM / UPROPERTY / UFUNCTION and specifiers like EditAnywhere /
  BlueprintReadWrite / BlueprintCallable), the gameplay framework (GameMode,
  GameState, PlayerController, Pawn, Character, PlayerState), the actor
  lifecycle (constructor / BeginPlay / Tick / EndPlay), components +
  CreateDefaultSubobject, spawning (GetWorld()->SpawnActor), Cast<>(), UE
  containers and types (TArray, TMap, TSet, FString / FName / FText, TObjectPtr,
  TSubclassOf), delegates and events, the Enhanced Input system, an intro to the
  Gameplay Ability System (GAS), and exposing C++ to Blueprint. Use this
  whenever you are writing a `UCLASS`/`class A...: public AActor`, adding a
  UPROPERTY/UFUNCTION, creating a component with CreateDefaultSubobject,
  overriding BeginPlay/Tick, spawning an actor, casting with Cast<>(), wiring a
  PlayerController/Pawn/Character/GameMode, binding Enhanced Input, or deciding
  which specifier exposes a member to the editor or Blueprint. Reach for it any
  time the task is "make a player/enemy/pickup in C++", "my variable doesn't
  show in the editor", "my actor pointer crashed / got garbage-collected",
  "GENERATED_BODY / .generated.h error", "spawn this actor", "expose this to
  Blueprint", "hook up input", or "add an ability". It has the verified UE 5.6/
  5.7 idioms (the reflection-is-opt-in gotcha, the A/U/F/T naming prefixes, the
  TObjectPtr+UPROPERTY-or-it-gets-GC'd rule) sourced from the embedded UE C++
  documentation. This is the central mental-model skill the physics, UI,
  animation, and audio Unreal skills build on. Covers Gameplay Programmer,
  Engine Programmer, and Systems Designer implementation work. Assumes a
  buildable project from unreal-project-setup.
---

# Unreal Gameplay in C++

Implement gameplay in C++: classes derived from `UObject`/`AActor`/
`UActorComponent`, made visible to the engine through the **reflection macros**,
driven by the **gameplay framework** (GameMode → PlayerController → Pawn/
Character), spawned at runtime, talking to each other through `Cast<>()`,
delegates, and components. Get the reflection model and the framework right and
the physics/UI/animation/audio skills slot straight in — this is their spine.

> Unreal Engine 5.6/5.7 (the embedded docs are the UE 5.6 export; 5.7's API is
> effectively identical). Every C++ snippet here is **doc-sourced from the
> embedded UE documentation (`references/api/`), not compile-tested in this
> environment (no engine installed)** — `scripts/unreal.sh` exits 127 with
> install guidance. When in doubt, grep `references/api/` and copy the real
> signature. UE C++ is its own world; do not assume STL or Unity/Godot habits.

## The one thing that trips everyone up

**UE's reflection is opt-in, and forgetting to opt in fails silently or
crashes.** A C++ member or class is invisible to the editor, Blueprint,
serialization, networking, **and the garbage collector** unless you explicitly
tag it. Four things must all be present, and missing any one is the #1 source of
"it compiles but does nothing" and "my pointer crashed" bugs:

1. **`UCLASS()`** above the class — makes it a reflected `UClass` the UObject
   system is aware of (`api/…Reflection_System_Objects.md`: *"The `UCLASS` macro
   can be used to tag classes derived from `UObject` so that the UObject handling
   system is aware of them."*).
2. **`GENERATED_BODY()`** as the first thing inside the class — *"required for
   all `UCLASS` and `USTRUCT`."*
3. **`#include "<ClassName>.generated.h"`** as the **last** include in the
   header — *"This line is expected to be the last `#include` directive in the
   file."*
4. **`UPROPERTY()`** on every member you want the engine to see. **This is not
   cosmetic for UObject pointers.** Garbage collection only keeps a UObject alive
   if a `UPROPERTY` pointer (or engine container / `TStrongObjectPtr`) references
   it. *"Object destruction is handled automatically by the garbage collection
   system when an Object is no longer referenced… no `UPROPERTY` pointers… should
   have any strong references to them."* A raw `UStaticMeshComponent*` **without**
   `UPROPERTY()` can be collected out from under you mid-frame → crash. Mark it
   `UPROPERTY()` and hold it in a `TObjectPtr<T>` (the modern UE5 form).

Two more that bite immediately, both from the **Coding Standard**
(`api/Programming_with_C++_Coding_Standard.md`):

- **Naming prefixes are mandatory, not style.** `A` = an `AActor` subclass,
  `U` = a `UObject`/component subclass, `F` = a plain struct/value type
  (`FVector`, `FString`), `T` = a template (`TArray`, `TObjectPtr`), `E` = enum,
  `I` = interface, `b` = a bool member. *"Unreal Header Tool requires the correct
  prefixes in most cases."* Name an actor class `Player` instead of `APlayer` and
  UHT errors.
- **Never `new`/`delete` a UObject.** *"All UObjects are memory managed by Unreal
  Engine and garbage collected."* Create them with `CreateDefaultSubobject<T>()`
  in a constructor (for components/subobjects) or `NewObject<T>()` at runtime;
  spawn actors with `GetWorld()->SpawnActor<T>()`.

All of these are expanded in `references/reflection_and_specifiers.md` and
`references/troubleshooting.md`.

## The mental model — vs Unity and Godot

| | Unity | Godot | **Unreal** |
| --- | --- | --- | --- |
| Thing in the world | GameObject + Components | Node tree | **`AActor`** + `UActorComponent`s |
| Your script | a `MonoBehaviour` Component | a script on a Node | a **C++ class** deriving `AActor`/`UActorComponent`/`UObject` |
| Composition | components on a GameObject | child nodes | **components attached to an Actor** (one is the `RootComponent`) |
| Base of everything | `Object` | `Object`/`RefCounted` | **`UObject`** (reflected, GC'd) |
| Reach another object | `GetComponent<T>()` | `GetNode<T>()` | `GetComponent`, `Cast<T>(Other)`, framework getters |
| Memory | GC | refcount / manual | **GC over `UPROPERTY` refs** (you don't `delete`) |

An `AActor` is anything placeable/spawnable in a level. A `UActorComponent`
(and its child `USceneComponent`, which has a transform) is reusable behavior/
data you attach to actors. A bare `UObject` is a reflected, GC-managed class
that is **not** in the world (data containers, subsystems). See
`references/uobject_actor_model.md`.

## The gameplay framework

The framework wires "who controls what" and "what are the rules". Each row is
from `api/…Gameplay_Framework_Quick_Reference.md`.

| Class | Prefix | Role |
| --- | --- | --- |
| **GameMode** (`AGameModeBase`/`AGameMode`) | `A` | Defines the rules/win conditions. **Server-only.** Holds little transient data. |
| **GameState** (`AGameStateBase`) | `A` | The game's *state* (scores, connected players). Exists on server + all clients; replicates freely. |
| **PlayerState** (`APlayerState`) | `A` | One participant's state (name, score). Exists on all machines, replicates. |
| **PlayerController** (`APlayerController`) | `A` | The human player's "will" — input, HUD, camera. One per human player. |
| **AIController** (`AAIController`) | `A` | A simulated "will" that possesses a Pawn (NPC brains → `unreal-physics-and-ai`). |
| **Pawn** (`APawn`) | `A` | An actor a Controller can **possess**; accepts input. Not assumed humanoid. |
| **Character** (`ACharacter`) | `A` | A humanoid Pawn — ships with a `CapsuleComponent` + `CharacterMovementComponent`, networked movement, anim hooks. |
| **HUD / PlayerCameraManager** | `A` | 2D on-screen display / the player's "eyeball". One each per PlayerController. |

A Controller **possesses** a Pawn to drive it. Full relationships and the
GameMode→DefaultPawnClass wiring are in `references/gameplay_framework.md`.

## The actor lifecycle (verified, override these)

Override these `virtual` functions (unlike Unity's message functions, these are
real overrides — call `Super::`). Grounded in `api/…Actor_Lifecycle.md` and the
Programming Quick Start.

| Function | When | Use for |
| --- | --- | --- |
| **Constructor** `AMyActor()` | Object creation (incl. the CDO at engine startup) | `CreateDefaultSubobject` components, set defaults. **No gameplay logic** — *"UObject constructors should be lightweight."* |
| **`BeginPlay()`** | When play starts / actor spawned & live | Gameplay init that needs other objects to exist. |
| **`Tick(float DeltaTime)`** | Every frame (only if `PrimaryActorTick.bCanEverTick = true`) | Per-frame logic; scale by `DeltaTime`. |
| **`EndPlay(...)`** | Destroy, level transition, PIE end, streamed-out | Cleanup; preferred over the legacy `OnDestroyed`. |

Destroy an actor with `Destroy()` (marks it for GC); it isn't freed until the
next garbage-collection pass and all references release. Don't poll for pending
kill — hold a `TWeakObjectPtr<AActor>` or check `IsValid()`.

## Verified idioms (copied from `references/api/`)

### A minimal actor — header + constructor — `api/…Programming_Quick_Start.md`, `…C++_Only.md`

```cpp
// FloatingActor.h
#pragma once
#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "FloatingActor.generated.h"   // LAST include

UCLASS()
class QUICKSTART_API AFloatingActor : public AActor
{
    GENERATED_BODY()
public:
    AFloatingActor();

    UPROPERTY(VisibleAnywhere)          // without this, GC can free it -> crash
    UStaticMeshComponent* VisualMesh;   // modern UE5: TObjectPtr<UStaticMeshComponent>

protected:
    virtual void BeginPlay() override;
public:
    virtual void Tick(float DeltaTime) override;
};
```

```cpp
// FloatingActor.cpp
AFloatingActor::AFloatingActor()
{
    PrimaryActorTick.bCanEverTick = true;                       // enable Tick()
    VisualMesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Mesh"));
    VisualMesh->SetupAttachment(RootComponent);                 // attach, don't reparent the root
}
```

### Specifiers that expose to editor / Blueprint — `api/…Programming_Quick_Start.md`

```cpp
UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="FloatingActor")
float FloatSpeed = 20.0f;                 // editable in Details panel + readable/writable in BP

UPROPERTY(VisibleAnywhere)                // shows in Details, not editable
UPROPERTY(EditDefaultsOnly)               // editable on the class default, not per-instance

UFUNCTION(BlueprintCallable, Category="FloatingActor")
void DoThing();                           // callable from Blueprint graphs
```

`EditAnywhere`/`VisibleAnywhere`/`EditDefaultsOnly` control the **editor**;
`BlueprintReadWrite`/`BlueprintReadOnly` / `BlueprintCallable` control
**Blueprint**. Full table in `references/reflection_and_specifiers.md`.

### Spawn an actor — `api/…Spawning_Actors.md`

```cpp
// Templated SpawnActor — type-safe, returns T*. Needs a UWorld.
FVector  Loc(0, 0, 100);
FRotator Rot = FRotator::ZeroRotator;
APawn* Spawned = GetWorld()->SpawnActor<APawn>(DefaultPawnClass, Loc, Rot, /*Owner*/this, Instigator);

// DefaultPawnClass is a TSubclassOf<APawn> UPROPERTY a designer sets in the editor.
```

### Cast safely — `api/…Casting_Quick_Start_Guide.md`, `…Spawning_Actors.md`

```cpp
if (ACharacter* Char = Cast<ACharacter>(OtherActor))   // returns nullptr on failure
{
    // Char is a valid ACharacter here
}
```

### Bind Enhanced Input — `api/…Input_Enhanced_Input.md`

```cpp
void AFooBar::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
    UEnhancedInputComponent* Input = Cast<UEnhancedInputComponent>(PlayerInputComponent);
    Input->BindAction(MoveAction, ETriggerEvent::Triggered, this, &AFooBar::Move);
}
void AFooBar::Move(const FInputActionInstance& Instance)
{
    FVector2D Axis = Instance.GetValue().Get<FVector2D>();   // bool / float / FVector2D / FVector
}
```

Add the mapping context once (typically in `BeginPlay`/`OnPossess`) via the
`UEnhancedInputLocalPlayerSubsystem`. Input Actions + Mapping Contexts are
**data assets**; bind to them by `UPROPERTY` reference. Modifiers/triggers and
the WASD→2D-axis swizzle pattern are in `references/gameplay_framework.md`.

### A dynamic multicast delegate (Blueprint-assignable event) — `api/Programming_with_C++_Delegates.md`

```cpp
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FOnHealthChanged, float, NewHealth);

UPROPERTY(BlueprintAssignable)
FOnHealthChanged OnHealthChanged;          // bind in C++ with AddDynamic, or in BP

OnHealthChanged.Broadcast(CurrentHealth);  // fire it
```

Non-dynamic delegates (`DECLARE_DELEGATE...` / `DECLARE_MULTICAST_DELEGATE...`)
are faster but not Blueprint/serializable. Use `BindUObject`/`AddDynamic`; UObject
bindings keep a weak ref so a destroyed target is handled by `ExecuteIfBound`.

### Containers & string types — `api/…Containers…`, `…String_Handling.md`

```cpp
TArray<int32> Scores;  Scores.Add(10);  Scores.Emplace(20);   // Emplace avoids a temp
TMap<FName, int32> Inventory;  Inventory.Add(TEXT("Gold"), 5);
TSet<AActor*> Seen;

FString Mutable = TEXT("hi");                 // searchable/modifiable; use TEXT() always
FName   Id(TEXT("Head"));                     // immutable, case-insensitive, fast compare
FText   Label = FText::FromString(Mutable);   // ALL user-facing text -> localizable
```

`FString` for manipulation, `FName` for cheap identifiers, **`FText` for
anything shown to a player** (it localizes). Details in
`references/uobject_actor_model.md`.

## Scaffolding an actor class

`scripts/new_actor_class.sh <Name> [outdir] [API_MACRO]` writes a correct
`A<Name>.h` + `<Name>.cpp` pair: `UCLASS()`, `GENERATED_BODY()`, the
`.generated.h` last-include, a `TObjectPtr` component created with
`CreateDefaultSubobject` under a `UPROPERTY`, and `BeginPlay`/`Tick` overrides —
i.e. all four reflection requirements pre-wired so you can't forget one. It
prepends the `A` prefix and names the file minus the prefix (UE convention),
rejects illegal identifiers, and refuses to overwrite. It writes **files only**
— no compile (no engine here). Then build with the project-setup / build skills.

`scripts/unreal.sh` is the shared toolchain wrapper (`editor`/`build`/`uat`/
`gencproj`); with no engine it exits 127 with install guidance — which is why
everything here is doc-sourced, not compile-tested.

## Depth (in `references/`)

- `uobject_actor_model.md` — UObject vs AActor vs UActorComponent, components &
  `CreateDefaultSubobject`/attachment, GC & TObjectPtr/TWeakObjectPtr, containers,
  FString/FName/FText, NewObject vs SpawnActor, vs Unity/Godot.
- `reflection_and_specifiers.md` — UCLASS/USTRUCT/UENUM/UPROPERTY/UFUNCTION, the
  specifier cheat-sheet (Edit*/Visible*/BlueprintReadWrite/BlueprintCallable/
  Category/etc.), TSubclassOf, delegates, the C++↔Blueprint exposure model.
- `gameplay_framework.md` — GameMode/GameState/PlayerState/Controller/Pawn/
  Character relationships & wiring, possession, spawning, timers, Enhanced Input
  setup, GAS intro (AbilitySystemComponent / GameplayAbility / Attributes /
  Effects / Cues).
- `troubleshooting.md` — the reflection/GC/build errors that cause most bugs.
- `api/` — the exhaustive embedded UE 5.6/5.7 docs for this domain (reflection,
  gameplay framework, containers, input, GAS, delegates, lifecycle, tutorials).

## What this covers / hands off to

Covers **Gameplay Programmer**, **Engine Programmer**, and **Systems Designer**
implementation work (player/enemy/item actors, controllers, rules, progression
wiring, the class architecture other systems hang off). Hands off to:

- `unreal-project-setup` — the buildable project + module/`.Build.cs` this
  assumes (start there first).
- `unreal-blueprints` — the Blueprint side; this skill exposes C++ to it via
  specifiers, that skill scripts/extends it visually.
- `unreal-physics-and-ai` — CharacterMovement, collision, raycasts, NavMesh,
  AIController/behavior trees.
- `unreal-ui-umg` — HUD/menus (UMG/Slate) and binding them to gameplay state.
- `unreal-animation` — AnimBP, montages, the anim side of Character.
- `unreal-niagara-vfx`, `unreal-rendering-materials`, `unreal-audio` — feedback.
- `unreal-build-deploy-multiplayer` — packaging, replication, dedicated servers
  (GAS replication, server-authority).
