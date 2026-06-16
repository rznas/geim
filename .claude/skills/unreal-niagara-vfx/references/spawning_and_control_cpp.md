# Spawning & Controlling Niagara from C++

The Niagara **assets** are authored in the editor; this is the **C++ side** — how
gameplay spawns a `UNiagaraSystem` and drives its **User parameters**. Concepts are
grounded in the embedded artist docs (`references/api/`, esp. the Beam tutorial and
the Caching/Reusing page); the **C++ signatures** come from the engine runtime
headers `NiagaraFunctionLibrary.h` and `NiagaraComponent.h` and are **not
compile-tested here** (no engine). Confirm signatures against your engine version.

## Setup: the module dependency

Add `"Niagara"` to your module's `.Build.cs` or nothing Niagara will link:

```csharp
PublicDependencyModuleNames.AddRange(new string[]
{
    "Core", "CoreUObject", "Engine", "InputCore",
    "Niagara",
});
```

Then include the headers where you use them:

```cpp
#include "NiagaraFunctionLibrary.h"
#include "NiagaraComponent.h"
#include "NiagaraSystem.h"   // if you hold a UNiagaraSystem* property
```

## Holding the asset reference

Reference the authored System through a GC-safe `UPROPERTY` (the
`TObjectPtr`-or-it-gets-collected rule from `unreal-gameplay-cpp`):

```cpp
UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "FX")
TObjectPtr<UNiagaraSystem> ExplosionSystem = nullptr;
```

Assign it in the editor (or `Class'/Game/FX/NS_Explosion.NS_Explosion'` for a hard
reference in C++, though editor-assignment is preferred).

## Spawning — `UNiagaraFunctionLibrary`

The function library is the spawn entry point; it mirrors the Blueprint *Spawn
System at Location* and *Spawn System Attached* nodes. Both return the live
`UNiagaraComponent*` (keep it if you'll set params / control it later).

### At a world location (one-shot bursts: impacts, explosions)

```cpp
UNiagaraComponent* FX = UNiagaraFunctionLibrary::SpawnSystemAtLocation(
    GetWorld(),
    ExplosionSystem,            // UNiagaraSystem*
    HitLocation,                // FVector
    FRotator::ZeroRotator,      // FRotator
    FVector(1.0f),              // FVector scale
    /*bAutoDestroy=*/ true,     // self-clean when the effect finishes
    /*bAutoActivate=*/ true,
    ENCPoolMethod::None,        // pooling (None / AutoRelease / ManualRelease)
    /*bPreCullCheck=*/ true);
```

### Attached to a component (follows the gun/character: muzzle, trail)

```cpp
UNiagaraComponent* Muzzle = UNiagaraFunctionLibrary::SpawnSystemAttached(
    MuzzleSystem,
    WeaponMesh,                          // USceneComponent* to attach to
    TEXT("MuzzleSocket"),                // FName socket (NAME_None = root)
    FVector::ZeroVector,                 // relative location
    FRotator::ZeroRotator,               // relative rotation
    EAttachLocation::KeepRelativeOffset, // how to interpret the offset
    /*bAutoDestroy=*/ true,
    /*bAutoActivate=*/ true,
    ENCPoolMethod::None,
    /*bPreCullCheck=*/ true);
```

### As a designed component on an actor

For an effect that's a permanent part of an actor (a torch, an aura), prefer a
`UNiagaraComponent` created in the constructor — you get the handle directly and no
spawn call is needed:

```cpp
// .h
UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "FX")
TObjectPtr<UNiagaraComponent> AuraFX;

// .cpp constructor
AuraFX = CreateDefaultSubobject<UNiagaraComponent>(TEXT("AuraFX"));
AuraFX->SetupAttachment(RootComponent);
AuraFX->SetAsset(AuraSystem);   // or set the System in the editor
```

## Setting User parameters — the gameplay interface

Once you have a `UNiagaraComponent*`, set its `User.` parameters with **typed**
setters. The name is the **bare** parameter name (no `User.` prefix), and it must
match the System's exposed User parameter **exactly** (case-sensitive) with a
**matching type**:

```cpp
FX->SetVariableFloat(TEXT("Intensity"), 3.0f);
FX->SetVariableInt(TEXT("BurstCount"), 200);
FX->SetVariableBool(TEXT("bLooping"), false);
FX->SetVariableVec2(TEXT("UVScroll"), FVector2D(0.1f, 0.0f));
FX->SetVariableVec3(TEXT("BeamEnd"), TargetWorldLocation);
FX->SetVariableVec4(TEXT("CustomData"), FVector4(...));
FX->SetVariableLinearColor(TEXT("Tint"), FLinearColor::Red);
FX->SetVariableQuat(TEXT("Orientation"), Q);
// object-typed User params (Data Interfaces):
FX->SetVariableActor(TEXT("TargetActor"), TargetActor);
FX->SetVariableMaterial(TEXT("OverrideMat"), MyMaterial);
FX->SetVariableStaticMesh(TEXT("MeshToEmit"), MyMesh);
FX->SetVariableTexture(TEXT("Mask"), MyTexture);
```

The static **function-library** form does the same for code that doesn't already
hold the component:

```cpp
UNiagaraFunctionLibrary::SetVariableFloat(FX, TEXT("Intensity"), 3.0f);
UNiagaraFunctionLibrary::SetVariableVec3(FX, TEXT("BeamEnd"), Target);
// (Niagara*DataInterface* helpers exist for arrays/textures etc.)
```

This C++ is the code-side of the **artist** workflow shown in the Beam tutorial
(`references/api/...Beam_Effect.md`): the artist promotes a value (there, the beam
end-point) to a User parameter via *Make > Read from new User parameter* so it can
be "set from outside the Niagara system." User parameters are "promoted to the
Niagara System instance in the level" (`...Caching_and_Reusing_your_System.md`) —
each spawned component is its own instance with its own User values.

## Spawn vs Update — when your set "takes"

A `User` parameter only changes a particle's behavior where a **module reads it**:

- Read in **Particle Spawn** → baked at birth. Setting it later affects only
  *newly spawned* particles, not living ones.
- Read in **Particle Update** (or Emitter/System Update) → re-read every frame, so
  setting it animates *living* particles too.

So to ramp a beam's end-point every frame, the System must read `User.BeamEnd` in an
Update stage. (See `niagara_model.md` for the stack.)

## Lifecycle control

On the `UNiagaraComponent`:

```cpp
FX->Activate(/*bReset=*/ true);   // (re)start the system
FX->Deactivate();                 // stop spawning; existing particles finish
FX->DeactivateImmediate();        // hard stop, clear particles now
FX->SetPaused(true);
FX->Activate();
bool bAlive = FX->IsActive();
```

- **`bAutoDestroy = true`** is the right default for one-shot bursts — the component
  destroys itself when the effect completes. Without it (or for looping systems)
  you own the component and must `Deactivate()`/`DestroyComponent()` it, or it
  **leaks / never disappears** (common bug).
- For high-frequency spawns (bullets, footsteps), prefer **pooling**
  (`ENCPoolMethod::AutoRelease`) or **Niagara Data Channels** (one shared listener
  System instead of many spawns) — see `niagara_model.md` and `troubleshooting.md`.

## Scaffolding

`scripts/new_niagara_spawner.sh <Class> <Module> [OutDir]` writes an `AActor`
(`.h`/`.cpp`) that, at `BeginPlay`, spawns a System via `SpawnSystemAttached`,
caches the component, and exposes a `BlueprintCallable SetIntensity(float)` that
calls `SetVariableFloat`. It strips a leading `A`, builds the `<MODULE>_API` macro,
and prints the `.Build.cs` + editor wiring reminders. File-only; does not compile.
