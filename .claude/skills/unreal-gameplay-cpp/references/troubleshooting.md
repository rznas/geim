# Troubleshooting — UE C++ gameplay

The reflection/GC/build mistakes that cause most "it compiles but does nothing"
and "it crashed" bugs. Doc-sourced from `references/api/`; not compile-tested
here (no engine). Cited pages are the source of truth — grep them.

## 1. My UObject pointer crashed / got garbage-collected

**Cause:** a UObject pointer member without `UPROPERTY()`. GC only keeps an
object alive through `UPROPERTY` references / engine containers / `TStrongObjectPtr`
(`…Reflection_System_Objects.md`). An untagged raw pointer is not a GC root, so
the object can be freed while you still hold the dangling pointer.

**Fix:** mark it `UPROPERTY()` and hold it in `TObjectPtr<T>`:

```cpp
UPROPERTY()
TObjectPtr<UMyThing> Thing;   // now a GC root; survives as long as this owner does
```

Want to *observe* without owning? Use `TWeakObjectPtr<T>` and check `IsValid()`.
Never `delete` a UObject; never use `TSharedPtr`/`TUniquePtr` for UObjects (those
are for plain `F`-types).

## 2. My variable / function doesn't show in the editor or Blueprint

**Cause:** missing or wrong specifier. "only functions and properties that are
marked with specifier macros will get listed within their corresponding UCLASS."

**Fix:**
- Editor field → `UPROPERTY(EditAnywhere, Category="X")` (or `VisibleAnywhere`).
- Blueprint get/set → add `BlueprintReadWrite` / `BlueprintReadOnly`.
- Callable from Blueprint → `UFUNCTION(BlueprintCallable)`.

See the specifier cheat-sheet in `reflection_and_specifiers.md`.

## 3. Build errors: `GENERATED_BODY` / `.generated.h` / UHT

**Symptoms:** "Unrecognized type", "Expected GENERATED_BODY", "Bad class
definition", `.generated.h` not found.

**Checklist** (`…Reflection_System_Objects.md`):
- `#include "ClassName.generated.h"` is the **last** include in the header.
- `GENERATED_BODY()` is the first line inside the class body.
- The class has `UCLASS()` (or `USTRUCT()`/`UENUM()`).
- The export macro is present: `class MYMODULE_API AMyActor : public AActor`.
- The **file name matches the class minus its A/U prefix** (`AActor` → `Actor.h`)
  and the class uses the correct prefix — "Unreal Header Tool requires the
  correct prefixes in most cases" (`Coding_Standard.md`, `…Gameplay_Classes.md`).
- If you just added the *first* C++ class to a Blueprint project, close the
  editor, build in the IDE, then reopen (`…Class_Creation_Basics_C++_Only.md`).

## 4. Wrong prefix → UHT rejects it

`Player : public AActor` errors; it must be `APlayer`. `U` for UObjects/
components, `A` for actors, `F` for structs, `T` for templates, `E` for enums,
`I` for interfaces, `b` for bool members.

## 5. Crash / nothing happens in the constructor

**Cause:** gameplay logic in the constructor. "UObject constructors should be
lightweight and only used to set up default values and subobjects." Components
are built for the Class Default Object at engine startup, so `GetWorld()` is
null, other actors don't exist, and spawning is invalid there.

**Fix:** move it to `BeginPlay()`. Keep only `CreateDefaultSubobject` and
default-value assignment in the constructor (`…Reflection_System_Objects.md`).

## 6. Tick never fires

**Cause:** `PrimaryActorTick.bCanEverTick` defaults to false on most generated
classes.

**Fix:** in the constructor: `PrimaryActorTick.bCanEverTick = true;` and override
`Tick(float DeltaTime)` calling `Super::Tick(DeltaTime)`. Turn ticking **off**
for actors that don't need it — per-frame ticking is a real cost.

## 7. `CreateDefaultSubobject` vs `NewObject` vs `SpawnActor`

- Component/subobject of an actor, **in the constructor** → `CreateDefaultSubobject<T>(TEXT("Name"))`.
- A plain UObject at **runtime** → `NewObject<T>(Outer)`.
- An **actor** in the world → `GetWorld()->SpawnActor<T>(...)`.

Using `new`/`delete` on any of these corrupts memory (`…Reflection_System_Objects.md`).

## 8. SpawnActor returns null / asserts

- No valid world: don't spawn from the constructor; use `BeginPlay` or later.
- Collision: the actor encroaches at the spawn point — pass spawn params
  (`FActorSpawnParameters::SpawnCollisionHandlingOverride`) or use
  `SpawnActorDeferred` and set a transform before `FinishSpawning`.
- Need to set properties before `BeginPlay`? Use the deferred-spawn pattern
  (`…Actor_Lifecycle.md`, `…Spawning_Actors.md`).

## 9. My overlap / hit / delegate callback never gets called

- The callback must be a `UFUNCTION()` to bind with `AddDynamic`
  (`…Class_Creation_Basics_C++_Only.md`). A plain method won't bind.
- The signature must exactly match the delegate (e.g. `OnComponentBeginOverlap`
  has a specific parameter list — copy it from the docs).
- For collision overlaps to fire at all, the components' collision settings must
  generate overlap events — that's `unreal-physics-and-ai`'s response-matrix gotcha.

## 10. Cast<>() returns null unexpectedly

`Cast<T>()` returns `nullptr` when the object isn't actually a `T` (it's a safe,
checked downcast). Always null-check the result
(`…Casting_Quick_Start_Guide.md`, `…Spawning_Actors.md`):

```cpp
if (ACharacter* C = Cast<ACharacter>(Other)) { /* safe */ }
```

Casting to an unrelated type, or to a Blueprint-only subclass from the wrong
module, yields null — verify the actual runtime type.

## 11. User-facing text doesn't localize

Use **`FText`** for anything shown to a player, not `FString`/`FName`. Only
`FText` carries localization (`…String_Handling.md`). Wrap literals with
`NSLOCTEXT`/`LOCTEXT`; `FText::FromString` is culture-invariant. (UI text →
`unreal-ui-umg`.)

## 12. GameMode state isn't reaching clients

GameMode "only exists on the server… it definitely should not have transient
data that clients need to know about" (`…Gameplay_Framework_Quick_Reference.md`).
Put replicated game state in **GameState**, per-player state in **PlayerState**.
Replication itself → `unreal-build-deploy-multiplayer`.

## When you actually need to compile

`scripts/unreal.sh build ...` (UBT) requires an installed engine; here it exits
127 with install guidance. Everything in this skill is therefore doc-sourced from
the embedded UE 5.6/5.7 documentation, **not compile-tested in this environment**.
Build/run/test for real with `unreal-project-setup` and
`unreal-build-deploy-multiplayer` on a machine with UE 5.7 installed
(`export UE_ROOT=/path/to/UnrealEngine`).
