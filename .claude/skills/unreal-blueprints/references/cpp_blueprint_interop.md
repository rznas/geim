# C++ ↔ Blueprint interop — the exposure boundary, in full

The defining skill of this domain in a C++-primary project: which C++ members are
visible to Blueprint, what node each produces, and how the two languages call
each other. All grounded in `api/…Exposing_C++_to_Blueprints.md` and
`api/…Exposing_Gameplay_Elements_to_Blueprints.md`. Doc-sourced, not
compile-tested (no engine installed).

## The mental model: opt-in reflection

C++ members are **invisible to Blueprint by default**. Visibility is opt-in via
the reflection macros (`UCLASS`/`UPROPERTY`/`UFUNCTION`) plus the right
specifier. There are three independent things to expose, and three (or four)
directions of communication:

```
                     C++ side                         Blueprint side
  UCLASS(Blueprintable)   ───────────────────────▶   can be a BP parent class
  UCLASS(BlueprintType)   ───────────────────────▶   usable as a variable type
  UPROPERTY(BlueprintReadOnly / BlueprintReadWrite) ▶ get / get+set variable nodes
  UFUNCTION(BlueprintCallable / BlueprintPure)  ◀───  Blueprint CALLS DOWN into C++
  UFUNCTION(BlueprintImplementableEvent)        ───▶  C++ CALLS UP into Blueprint (no C++ body)
  UFUNCTION(BlueprintNativeEvent)               ◀──▶  C++ default + BP override (_Implementation)
```

## Making a class Blueprintable (`…Exposing_Gameplay_Elements…`)

```cpp
UCLASS(Blueprintable)
class AMyBlueprintableClass : AActor
{
    GENERATED_BODY()
};
```

| Keyword | Effect |
| --- | --- |
| **Blueprintable** | this class can be the **parent** of a Blueprint (shows in *New Blueprint* dialog). Default is NotBlueprintable. **Inherited** by subclasses. |
| **BlueprintType** | this class can be used as a **variable type** in Blueprints. |
| **NotBlueprintable** | explicitly forbid being a BP base; negates an inherited `Blueprintable`. |

For the C++-base / BP-child workflow you typically want both:
`UCLASS(Blueprintable, BlueprintType)`.

## Exposing variables — UPROPERTY (`…Exposing_Gameplay_Elements…`)

```cpp
//Character's Health
UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Character")
float health;
```

| Specifier | Effect in Blueprint |
| --- | --- |
| **BlueprintReadOnly** | a **get** node only (cannot set from BP) |
| **BlueprintReadWrite** | **get and set** nodes |
| **BlueprintAssignable** | (multicast delegate) assignable/bindable in BP |
| **BlueprintCallable** (on a delegate) | the delegate can be called from BP graphs |

**Two different axes, do not confuse them:** `EditAnywhere`/`EditDefaultsOnly`/
`VisibleAnywhere` control the **Details panel** (editor); `BlueprintReadOnly`/
`BlueprintReadWrite` control the **graph**. A property with only `EditAnywhere`
is editable in the Details panel but **will not appear as a node in the graph**.
Most tunables want both: `UPROPERTY(EditAnywhere, BlueprintReadWrite, …)`.
`Category="..."` groups it in the panel and palette.

## Exposing functions — UFUNCTION

### Blueprint calls down into C++

**`BlueprintCallable`** — *"a native function that can be called from a Blueprint,
which executes native code that changes something… This means it has to be
'scheduled'… by the white execution line"* (`…Exposing_Gameplay_Elements…`).
Impure node, **has exec pins**.
```cpp
//Fire a Weapon
UFUNCTION(BlueprintCallable, Category="Weapon")
void Fire();
```

**`BlueprintPure`** — *"executes native code that does not change anything…
nothing is changed by calling this node, it just takes input, and tells you an
output… These do not need to be scheduled, and do not have a connection for the
white execution line."* Pure node, **no exec pins**. Use for getters/math.
```cpp
/* Returns a uniformly distributed random number between 0 and Max - 1 */
UFUNCTION(BlueprintPure, Category="Math|Random")
static int32 RandomInteger(int32 Max);
```
A **`const`** member function declared `BlueprintCallable` is also treated as pure
(no exec pins) — *"Marking a function as const will also cause the Blueprint node
to not have execution pins"*:
```cpp
UFUNCTION(BlueprintCallable, meta=(DisplayName = "GetActorTransform"), Category="Utilities|Transformation")
FTransform GetTransform() const;
```

### C++ calls up into Blueprint

**`BlueprintImplementableEvent`** — *"the primary way we allow native functions
to call up into Blueprints. They are like virtual functions that you implement in
the Blueprint themselves. If there is no implementation, the function call is
ignored."* **There is no native body.** Declare it and call it from C++; the
Blueprint child provides the logic. If it has **no return/out param** it appears
as a red **Event** node in the BP; if it **does**, it shows in *My Blueprint* and
is overridden via *implement function*.
```cpp
// .h — declaration only. Do NOT write OnCollected() in the .cpp (link error).
UFUNCTION(BlueprintImplementableEvent, Category="Pickup")
void OnCollected();
```

**`BlueprintNativeEvent`** — *"the same as above, except there is a native default
implementation… called if the Blueprint does not override the function… you can
still call the native implementation… by 'Add call to parent'."* You write the
C++ default in a method suffixed **`_Implementation`** (verified in
`api/…Blueprint_Interface_Implement_Interface_in_Blueprint.md`):
```cpp
// .h
UFUNCTION(BlueprintCallable, BlueprintNativeEvent, Category=MyInterface)
FString MyNativeFunction();

// .cpp — note the _Implementation suffix; this is the default the BP may override.
FString AMyInterfaceActor::MyNativeFunction_Implementation()
{
    return FString(TEXT("My Native Function C++ Implementation first."));
}
```
**Always call the bare name** (`MyNativeFunction()`) from other C++ — never
`_Implementation()` directly — so the Blueprint override is honored. Pick
`BlueprintNativeEvent` when you need a sensible C++ default; pick
`BlueprintImplementableEvent` when the behavior is purely the designer's. The docs
note native events *"are more costly, so we only put them in where… needed."*

## Parameters, outputs, and node ergonomics (`…Exposing_C++_to_Blueprints…`)

- **A pass-by-reference param becomes an OUTPUT pin.** To keep a ref param as an
  *input*, wrap it in `UPARAM(ref)`:
  ```cpp
  UFUNCTION(BlueprintCallable, Category = "Example Nodes")
  static void HandleTargets(UPARAM(ref) TArray<FVector>& InputLocations, TArray<FVector>& OutputLocations);
  ```
- **Favor many out-params over returning a struct** — gives multiple output pins:
  ```cpp
  UFUNCTION(BlueprintCallable, Category = "Example Nodes")
  static void MultipleOutputs(int32& OutputInteger, FVector& OutputVector);
  ```
- **Optional params** with C++ defaults are handled well in Blueprint (the pins
  pre-fill). **Add** params freely; to **remove/change** one, deprecate the old
  function (`meta=(DeprecatedFunction, DeprecationMessage="…")`) and add a new one.
- `UPARAM(DisplayName="…")` renames a pin (e.g. KismetMathLibrary's `MakeRotator`
  shows "X (Roll)" etc.).
- `meta=(ExpandEnumAsExecs="OutResult")` turns an enum out-param into multiple
  exec output pins — nicer branching nodes.
- Many time-taking operations should be **latent** (`meta=(Latent, LatentInfo="…")`)
  like the engine's `Delay` — latent nodes can live in BP **macros but not BP
  functions** (see `blueprint_anatomy.md`).

## Blueprint Function Libraries — global, target-less nodes (`…Exposing_C++_to_Blueprints…`)

```cpp
class DOCUMENTATIONCODE_API UTestBlueprintFunctionLibrary : public UBlueprintFunctionLibrary
```
A `UBlueprintFunctionLibrary` of `static` `BlueprintCallable`/`BlueprintPure`
functions produces nodes with **no Target pin**, callable from any Blueprint —
*"Consider putting functions in a shared library if possible. This makes them
easy to use across multiple classes, and avoids a 'target' pin."* The idiomatic
home for reusable helper/math/utility nodes.

## Blueprint Interfaces — a shared contract across unrelated classes

A Blueprint Interface is *"a collection of one or more functions — name only, no
implementation — that can be added to other Blueprints"* so unrelated types share
a callable surface (`api/…Blueprints_Visual_Scripting_Overview.md`). In C++ it's
the `UINTERFACE` + `I…` pair (`api/…Blueprint_Interface_Implement_Interface…`):
```cpp
UINTERFACE(MinimalAPI, Blueprintable)
class UMyInterface : public UInterface { GENERATED_BODY() };

class SAMPLE_API IMyInterface
{
    GENERATED_BODY()
public:
    virtual bool MyInterfaceFunction();                                   // pure C++

    UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category=MyInterface)
    bool MyImplementableFunction();                                       // BP-only impl

    UFUNCTION(BlueprintCallable, BlueprintNativeEvent, Category=MyInterface)
    FString MyNativeFunction();                                           // C++ default + BP override
};
```
An implementing actor inherits both, e.g. `class AMyInterfaceActor : public
AActor, public IMyInterface`, and provides `MyNativeFunction_Implementation()
override`. Use interfaces when many different classes must respond to the same
call (e.g. `Interact`, `TakeDamageCustom`) without a shared base class.

## BP vs C++ — the decision matrix

The two drivers (`…Exposing_C++_to_Blueprints…`) are **speed** and **complexity
of expression**:

| Signal | Lean C++ | Lean Blueprint |
| --- | --- | --- |
| Frequency | every tick / high frequency | event-driven, occasional |
| Data scale | large sets, crowds (1000 actors), heavy math | a few values, simple logic |
| Expression | string ops, big-array ops, dense math (awkward as nodes) | wiring, FX/SFX, defaults, prototypes |
| Who edits it | programmers | designers tuning without recompiling |
| Role | foundational/shared systems | content, per-instance variation |

Endorsed flow: *"use Blueprints extensively, and then push things into C++ as they
reach a complexity where that would enable a more concise expression… or speed of
execution dictates a move to C++."* In practice: **build the base + exposed API in
C++, extend in a Blueprint child** (the ShooterGame/StrategyGame turret + pickup
examples — base turret in C++, flamethrower/cannon/arrow behavior in BP; pickup's
`Collect`/`Respawn` as `BlueprintImplementableEvent`s the designer fills in).

> **Nativization:** UE4's "Blueprint Nativization" (transpile BP→C++ at cook) was
> **removed in UE5**. There is no global "make Blueprints fast" switch — the
> compiler's `FKismetCppBackend` C++-like output is *for debugging only*. The real
> fix for a hot Blueprint is to hand-move that piece into C++ and keep the rest in
> BP, per the matrix above.

## Scaffold

`scripts/new_bp_exposed_cpp.sh <ClassName> [MODULE_API] [outdir]` emits a `.h/.cpp`
demonstrating all of the above in one actor: `UCLASS(Blueprintable, BlueprintType)`,
a `UPROPERTY(EditAnywhere, BlueprintReadWrite)` tunable, a `UFUNCTION(BlueprintCallable)`,
and a body-less `UFUNCTION(BlueprintImplementableEvent)` hook. Files only; no
compile (no engine). Create the BP child in-editor afterward.
