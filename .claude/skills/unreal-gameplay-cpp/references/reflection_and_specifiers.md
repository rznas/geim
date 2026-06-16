# Reflection macros & specifiers — exposing C++ to the engine and Blueprint

Doc-sourced from `references/api/`; not compile-tested here (no engine). The
authoritative pages are `…Reflection_System.md`, `…Reflection_System_Objects.md`,
`…Reflection_System_Properties.md` (UPROPERTY), `…Reflection_System_UFunctions.md`,
`…Reflection_System_Structs.md`, `…Reflection_System_TSubclassOf.md`,
`…Reflection_System_Metadata_Specifiers.md`, and the C++ examples in
`Gameplay_Systems_Class_Creation_Basics_C++_Only.md`.

## Why reflection exists

The reflection system "encapsulates your classes with various macros that
provide engine and editor functionality." Tagging a class/member opts it into:
garbage collection, reference updating, **reflection**, serialization, automatic
editor integration, runtime type info, and **network replication**
(`…Reflection_System_Objects.md`). Untagged members are normal C++ but invisible
to all of the above. **It is opt-in** — see the SKILL.md "one thing that trips
everyone up".

## The required header skeleton

A UObject/AActor header must follow this shape or UnrealHeaderTool (UHT) errors:

```cpp
#pragma once
#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "MyActor.generated.h"     // <-- ALWAYS the last include

UCLASS()
class MYPROJECT_API AMyActor : public AActor   // MYPROJECT_API exports across modules
{
    GENERATED_BODY()               // <-- first thing inside the class body
    // ... UPROPERTY / UFUNCTION members ...
};
```

- `#include "X.generated.h"` "is expected to be the last `#include` directive."
- `GENERATED_BODY()` "takes no arguments… It is required for all `UCLASS` and
  `USTRUCT`." Source: `…Reflection_System_Objects.md`.
- `MYPROJECT_API` (the module's DLL-export macro) is "necessary if MyProject
  wishes to expose the class to other modules."

## The five macros

| Macro | Tags a… | Notes |
| --- | --- | --- |
| `UCLASS()` | class deriving `UObject`/`AActor` | makes it a reflected `UClass`; maintains the Class Default Object (CDO). |
| `USTRUCT()` | plain struct (`F` prefix) | same reflection/serialization as UObjects but **value type, not GC'd**. |
| `UENUM()` | enum (`E` prefix) | exposes enum values to editor/Blueprint. |
| `UPROPERTY(...)` | member variable | the GC root + editor/BP/serialization gate. |
| `UFUNCTION(...)` | member function | for BP calls, delegates, RPCs, editor buttons. |

> "only functions and properties that are marked with specifier macros will get
> listed within their corresponding UCLASS." — `…Reflection_System_Objects.md`

## UPROPERTY specifier cheat-sheet

Two independent axes: **editor visibility** and **Blueprint access**. Combine one
from each (plus an optional `Category`). Grounded in the Quick Start
(`EditAnywhere, BlueprintReadWrite, Category=...`) and the C++ Only example
(`VisibleAnywhere, Category=...`).

Editor visibility:

| Specifier | Effect |
| --- | --- |
| `EditAnywhere` | editable in the Details panel on the class default **and** per-instance |
| `EditDefaultsOnly` | editable only on the class default (the archetype), not per-instance |
| `EditInstanceOnly` | editable only per-instance |
| `VisibleAnywhere` | shown but **read-only** in Details (use for components/subobjects) |
| `VisibleDefaultsOnly` / `VisibleInstanceOnly` | read-only, scoped |

Blueprint access:

| Specifier | Effect |
| --- | --- |
| `BlueprintReadWrite` | get **and** set from Blueprint graphs |
| `BlueprintReadOnly` | get only from Blueprint |
| `BlueprintAssignable` | for dynamic multicast delegates — bind events in BP |

Other common ones: `Category="Foo"` (groups in Details, supports `"Foo|Bar"`
sub-categories), `meta=(ClampMin="0", ClampMax="100")`, `Transient` (not saved),
`Replicated` / `ReplicatedUsing=OnRep_Fn` (networking). Metadata specifiers are
catalogued in `…Reflection_System_Metadata_Specifiers.md`.

```cpp
UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Stats", meta=(ClampMin="0"))
float MaxHealth = 100.f;

UPROPERTY(VisibleAnywhere, Category="Components")
TObjectPtr<UStaticMeshComponent> Mesh;     // component: visible, not editable; TObjectPtr + UPROPERTY
```

## UFUNCTION specifiers

Source: `…Reflection_System_UFunctions.md`, Enhanced Input + delegate examples.

| Specifier | Effect |
| --- | --- |
| `BlueprintCallable` | callable from BP graphs (an impure node) |
| `BlueprintPure` | callable, no exec pins (a getter; no side effects) |
| `BlueprintImplementableEvent` | declared in C++, **implemented in Blueprint** (no C++ body) |
| `BlueprintNativeEvent` | C++ default impl (`_Implementation`) overridable in BP |
| `CallInEditor` | adds a button to the Details panel |
| `Server` / `Client` / `NetMulticast` | RPCs (networking; needs `Reliable`/`Unreliable`) |
| bare `UFUNCTION()` | enough to bind as a dynamic-delegate callback (e.g. `AddDynamic`) |

```cpp
UFUNCTION(BlueprintCallable, Category="Combat")
void ApplyDamage(float Amount);

UFUNCTION(BlueprintImplementableEvent, Category="FX")
void OnHitReact();   // no C++ definition — designers fill it in Blueprint

UFUNCTION()          // bindable as a delegate handler:
void OnOverlapBegin(UPrimitiveComponent* Comp, AActor* Other, /*...*/);
```

Overlap/hit callbacks **must** be `UFUNCTION()` to bind with `AddDynamic`
(`…Class_Creation_Basics_C++_Only.md`):

```cpp
Sphere1->OnComponentBeginOverlap.AddDynamic(this, &ALightSwitchCodeOnly::OnOverlapBegin);
```

## TSubclassOf — type-safe "which class to spawn"

`TSubclassOf<T>` "is a template class that provides `UClass` type safety… useful
for assigning classes that derive from a specific type. For example, you may
expose this variable to Blueprint where a designer can assign which weapon class
is spawned." (`…Reflection_System.md`, `…TSubclassOf.md`)

```cpp
UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category="Spawning")
TSubclassOf<AProjectile> ProjectileClass;   // designer picks a BP subclass

GetWorld()->SpawnActor<AProjectile>(ProjectileClass, Loc, Rot);
```

## Delegates — UE's events

Source: `Programming_with_C++_Delegates.md`, `…Dynamic_Delegates.md`,
`…Multi-cast_Delegates.md`.

| Kind | Declare with | Bind | Blueprint? | Serializable? |
| --- | --- | --- | --- | --- |
| Single | `DECLARE_DELEGATE[_NParams]` | `BindUObject`/`BindLambda`/`BindRaw` | no | no |
| Multicast | `DECLARE_MULTICAST_DELEGATE...` | `Add...` | no | no |
| Dynamic (multicast) | `DECLARE_DYNAMIC_MULTICAST_DELEGATE...` | `AddDynamic` | yes (`BlueprintAssignable`) | yes |

```cpp
// Blueprint-assignable event with one float param:
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FOnHealthChanged, float, NewHealth);

UPROPERTY(BlueprintAssignable, Category="Stats")
FOnHealthChanged OnHealthChanged;

// fire:
OnHealthChanged.Broadcast(Health);
// bind in C++:
Target->OnHealthChanged.AddDynamic(this, &AMyHUD::HandleHealthChanged);
```

Binding to a UObject keeps a **weak** reference, so a destroyed target is handled
safely — guard with `IsBound()` / `ExecuteIfBound()` before `Execute` on
single/non-dynamic delegates. Dynamic delegates are slower but find functions by
name and serialize; use them at the C++↔Blueprint boundary.

## The C++ ↔ Blueprint exposure model (summary)

- **Data:** `UPROPERTY(EditAnywhere, BlueprintReadWrite)` → tunable in the editor
  and readable/writable in BP graphs.
- **Call C++ from BP:** `UFUNCTION(BlueprintCallable)` (or `BlueprintPure` for
  getters).
- **Call BP from C++:** `UFUNCTION(BlueprintImplementableEvent)` (BP-only body) or
  `BlueprintNativeEvent` (C++ default + BP override via `_Implementation`).
- **Events both ways:** a `BlueprintAssignable` dynamic multicast delegate.
- **"Which class":** a `TSubclassOf<T>` UPROPERTY a designer fills in.

This is the seam that lets programmers own systems in C++ while designers iterate
in Blueprint. The Blueprint side itself is `unreal-blueprints`.
