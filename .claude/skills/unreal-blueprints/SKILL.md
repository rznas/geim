---
name: unreal-blueprints
description: >
  Author and reason about Blueprints — Unreal Engine 5.6/5.7's visual scripting
  layer — and the C++ ↔ Blueprint boundary, in a C++-primary UE project. Use
  this whenever you are deciding BP vs C++ for a feature, exposing a C++ class /
  function / variable to Blueprint, designing a "C++ base class, Blueprint child"
  workflow, or working with the Blueprint anatomy (Event Graph, Construction
  Script, Functions, Variables, Components, Macros, Interfaces, Event
  Dispatchers). Reach for it any time the task is "make this callable from
  Blueprint", "expose this property to designers", "why can't I see my C++
  function/variable in the Blueprint", "should this be a BlueprintImplementableEvent
  or BlueprintNativeEvent", "let a designer override this in BP", "what's the
  difference between BlueprintCallable and BlueprintPure", "BeginPlay / Tick /
  custom event", "my Construction Script is slow / runs in the editor", "Event
  Graph vs Construction Script", "Functions vs Macros", "Blueprint Interface", or
  "is this slow because it's in Blueprint". It has the verified UFUNCTION /
  UPROPERTY / UCLASS specifier rules (the exact gate that decides whether a C++
  member appears in Blueprint at all), the BP-vs-C++ decision guidance, the
  Blueprint-compiles-to-bytecode performance model, and the Construction-Script-
  runs-in-editor trap — all sourced from the embedded UE 5.6/5.7 Blueprints docs.
  Covers Gameplay Programmer, Systems Designer, and Technical Designer work.
  Assumes a buildable project (unreal-project-setup). For pure C++ gameplay
  (AActor/UObject, the C++ lifecycle) hand to unreal-gameplay-cpp.
---

# Unreal Blueprints + the C++ ↔ Blueprint boundary

Blueprints are Unreal's **visual scripting language**: a node graph attached to a
UObject-derived class, **compiled to bytecode** that runs on a virtual machine
(`references/api/…Blueprint_Compiler_Overview.md`). In this **C++-primary**
suite, Blueprints earn their place at the seam where programmers and designers
meet — the programmer builds a flexible base class in C++ and *exposes* a tuned
set of properties, functions, and event hooks; the designer extends it in a
Blueprint child to set meshes, defaults, FX, and one-off behavior without
recompiling. Get the **exposure boundary** right and that division of labor is
clean; get it wrong and "the function I wrote isn't showing up in Blueprint."

> UE 5.6/5.7. Every snippet here is **doc-sourced from the embedded UE 5.6/5.7
> documentation (`references/api/`), not compile-tested in this environment (no
> Unreal Engine installed — `scripts/unreal.sh` exits 127 with install
> guidance).** Blueprints are authored *in the editor* as binary `.uasset`
> files, not as text — so the only thing scaffoldable from the command line is
> the **C++ side** of the boundary (exposure stubs), which is what the script
> here does. When in doubt, grep `references/api/` and copy the real specifier.

## The one thing that trips everyone up

**Two traps, both about the C++ ↔ Blueprint seam.**

**1. A C++ member is invisible to Blueprint unless you tag it with the right
specifier — and the *kind* of specifier decides the *kind* of node you get.**
This is the gate. From `references/api/…Exposing_Gameplay_Elements_to_Blueprints.md`:

| You want… | C++ specifier | What shows in Blueprint |
| --- | --- | --- |
| The whole C++ class to be a BP parent | `UCLASS(Blueprintable)` | appears in the *New Blueprint* parent-class list |
| Use the C++ class as a BP variable type | `UCLASS(BlueprintType)` | usable as a variable/pin type |
| A variable readable in BP | `UPROPERTY(BlueprintReadOnly)` | a *get* node only |
| A variable read **and written** in BP | `UPROPERTY(BlueprintReadWrite)` | *get* and *set* nodes |
| C++ function callable from BP (changes state) | `UFUNCTION(BlueprintCallable)` | impure node **with white exec pins** |
| C++ function callable, no state change (getter/math) | `UFUNCTION(BlueprintPure)` | pure node, **no exec pins**, data only |
| C++ raises a hook **the BP implements** (no C++ body) | `UFUNCTION(BlueprintImplementableEvent)` | a red Event node / overridable function in BP |
| Same, but with a **C++ default** the BP may override | `UFUNCTION(BlueprintNativeEvent)` | overridable; you write `Fn_Implementation()` in C++ |

Forget the specifier (or use `EditAnywhere` alone — that's editor-only, *not*
graph-visible) and the member simply won't appear in the graph. That is the #1
"why can't I see it" cause. `EditAnywhere` (Details panel) and `BlueprintReadWrite`
(graph) are **different axes** — you usually want both:
`UPROPERTY(EditAnywhere, BlueprintReadWrite, …)`.

The direction matters too: `BlueprintCallable`/`BlueprintPure` are **Blueprint
calls C++** (down); `BlueprintImplementableEvent`/`BlueprintNativeEvent` are
**C++ calls up into Blueprint**. The two `…Event` flavors differ in one line
(`…Exposing_Gameplay_Elements…`): `BlueprintImplementableEvent` has **no native
implementation** — *do not write a C++ body for it* (the engine generates the
thunk; a body is a link error) — whereas `BlueprintNativeEvent` **does** have a
C++ default you write in a `MyFunction_Implementation()` method, callable from BP
via *Add Call to Parent* (verified in `…Blueprint_Interface_Implement_Interface…`:
`FString AMyInterfaceActor::MyNativeFunction_Implementation() override;`).

**2. The Construction Script runs *in the editor*, on every change — not just at
runtime.** From `references/api/…Construction_Script.md`: it "runs following the
Components list when an instance of a Blueprint Class is created" — and an
instance is re-created every time you move the actor in the level, edit a
property, or recompile. So heavy work there (world traces, spawning, expensive
loops) re-runs constantly and bogs the editor down. Put **per-frame and runtime
logic in the Event Graph** (`BeginPlay`/`Tick`/events); reserve the Construction
Script for *context-aware setup* (pick a mesh based on the ground, size a fence
to span a gap). `Tick`/`BeginPlay` do **not** fire in the Construction Script.

## BP vs C++ — when each wins (this is a C++-primary suite)

Grounded in `references/api/…Exposing_C++_to_Blueprints.md` and `…Blueprint_Best_Practices.md`.
Two axes drive the call: **speed** and **complexity of expression**.

**Reach for C++ when:**
- It runs hot — every-tick math, large data sets, a crowd of a thousand actors.
  *"Blueprint execution is slower than C++ execution"*; the docs' canonical
  example is a crowd system — do pathing/decisions in C++, expose only tuning
  params to BP.
- The logic is awkward as nodes — string manipulation, big-array operations,
  complex math. *"some things are just not very easy to express in nodes."*
- It's foundational/shared infrastructure other classes build on.

**Reach for Blueprint when:**
- It's **event-driven** glue — damage response, pickups, opening a door, level
  one-offs. *"Blueprints are best suited to making event-driven functionality…
  that don't get called every frame"* (`…Best_Practices.md`).
- A **designer** needs to tune it (fire rate, FX, defaults) without a programmer
  recompile — the whole point of exposure (`…Exposing_Gameplay_Elements…`: change
  fire rate in the BP, no recode/recompile).
- Rapid prototyping, or setting meshes/materials/defaults on a class.

**The endorsed workflow** (`…Exposing_C++_to_Blueprints.md`): *"use Blueprints
extensively, and then push things into C++ as they reach a complexity where that
would enable a more concise expression… or speed of execution dictates a move to
C++."* The idiomatic shape is **C++ base class → Blueprint child**: programmer
defines the base + exposed API in C++; designer makes a Blueprint subclass that
assigns meshes/defaults and implements the `BlueprintImplementableEvent` hooks
(the doc's ShooterGame/StrategyGame turret + pickup examples).

> Note on nativization: legacy UE4 "Blueprint Nativization" (BP→C++ transpile at
> cook) was **removed in UE5**. The modern answer to "Blueprint is too slow" is
> not a global toggle — it's **move that hot path into C++** by hand and keep the
> rest in BP, exactly as the table above prescribes.

## Blueprint anatomy

A Blueprint Class is *"an asset that allows content creators to add functionality
on top of existing gameplay classes… defines a new class or type of Actor"*
(`…Anatomy_of_a_Blueprint.md`). Its parts:

| Part | What it is | Notes |
| --- | --- | --- |
| **Components** | StaticMesh, collision, movement, etc. attached in the Components window | reusable building blocks; assignable to instance variables |
| **Construction Script** | node graph run *when an instance is created* (incl. in-editor) | context-aware setup; **not** for runtime/per-frame logic; Level Blueprints have none |
| **Event Graph** | node graph reacting to gameplay events | runtime interactivity; `BeginPlay`, `Tick`, overlaps, damage, custom events |
| **Functions** | callable sub-graphs, single entry, one exec out | can be **overridden in child BPs**, targeted on other objects, Public/Protected/Private; **no latent nodes** |
| **Macros** | copy-pasted node groups, expanded at compile | **can hold latent nodes & multiple exec wires**; not overridable, not callable cross-BP |
| **Variables** | class or local; hold values / object refs | class vars persist; local vars are a per-function scratch pad |

**Pure vs Impure** (`…Functions.md`): a **Pure** function (`BlueprintPure`, or
the *Pure* checkbox) promises not to modify state and gets **no exec pins** — it
runs *once per node it feeds*, when its data is needed. **Impure**
(`BlueprintCallable`) has exec pins and runs in white-wire order. Use Pure for
getters/math only.

Blueprint **types** (`…Blueprints_Visual_Scripting_Overview.md`): Blueprint Class
(the workhorse, reusable, droppable into any level), **Data-Only Blueprint**
(tweak inherited defaults, no new logic), **Level Blueprint** (one per level,
global event graph, **no** Construction Script — good for level one-offs, not
reusable), **Blueprint Interface** (function signatures only — shared contract
between unrelated BPs), and **Macro Library**.

## Event flow (Event Graph)

Events *"are nodes that are called from gameplay code to begin execution of an
individual network within the EventGraph"* (`…Events.md`). Only **one of each
built-in event type per graph**; chain actions linearly off its exec pin.

| Event | Fires when | Maps to C++ |
| --- | --- | --- |
| **Event BeginPlay** | game starts, or immediately when spawned later | `BeginPlay()` |
| **Event Tick** | every frame; outputs **Delta Seconds** | `Tick(float DeltaTime)` |
| **Event EndPlay** | actor leaves the world (reason enum out) | `EndPlay(...)` (`Destroyed` is being deprecated into this) |
| **Event ActorBeginOverlap / Hit** | collision/overlap (needs *Generate Overlap Events* / *Simulation Generates Hit Events*) | `OnComponentBeginOverlap` etc. |
| **Event AnyDamage / PointDamage / RadialDamage** | damage applied (**server only**; in single-player the client *is* the server) | `TakeDamage` path |
| **Custom Event** | only when *you* call it; can be called many times, even cross-graph; can be set Replicated | a named UFUNCTION you trigger |

**Custom Events** (`…Events_Custom_Events.md`) untangle graphs: instead of wiring
many exec wires into one node, route them all to a Custom Event. If you add/remove
its inputs, **Refresh Nodes** on every caller or you get compile errors.

## Exposing C++ to Blueprint — verified specifiers

All copied from `references/api/` (`…Exposing_Gameplay_Elements_to_Blueprints.md`,
`…Exposing_C++_to_Blueprints.md`). `references/cpp_blueprint_interop.md` has the
full set + the gotchas.

### Make the class a Blueprint parent — `…Exposing_Gameplay_Elements…`
```cpp
UCLASS(Blueprintable)
class AMyBlueprintableClass : AActor
{
    GENERATED_BODY()
};
```

### Expose a tunable variable — `…Exposing_Gameplay_Elements…`
```cpp
//Character's Health
UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Character")
float health;
```
`EditAnywhere` = editable in the Details panel; `BlueprintReadWrite` = get **and**
set nodes in the graph. Use `BlueprintReadOnly` for a get-only.

### Call C++ from Blueprint (impure, has exec pins) — `…Exposing_Gameplay_Elements…`
```cpp
//Fire a Weapon
UFUNCTION(BlueprintCallable, Category="Weapon")
void Fire();
```

### A pure node (no exec pins) — getter/math — `…Exposing_C++_to_Blueprints…`
```cpp
/* Returns a uniformly distributed random number between 0 and Max - 1 */
UFUNCTION(BlueprintPure, Category="Math|Random")
static int32 RandomInteger(int32 Max);
```
A `const` member function on a `BlueprintCallable` also drops the exec pins.

### C++ calls up into Blueprint — the designer implements it
```cpp
// No C++ body — the Blueprint child implements this (FX, SFX, scoring…):
UFUNCTION(BlueprintImplementableEvent, Category="Pickup")
void OnCollected();
```
Versus a native default the BP may override (`…Blueprint_Interface_Implement_Interface…`):
```cpp
UFUNCTION(BlueprintCallable, BlueprintNativeEvent, Category=MyInterface)
FString MyNativeFunction();
// ...and in the .cpp you write the default, suffixed _Implementation:
FString AMyInterfaceActor::MyNativeFunction_Implementation() override
{
    return FString(TEXT("My Native Function C++ Implementation first."));
}
```

### Multiple outputs / ref params — `…Exposing_C++_to_Blueprints…`
A by-reference param becomes an **output pin**; favor many out-params over
returning a struct. To keep a ref param as an *input* pin, wrap it in `UPARAM(ref)`:
```cpp
UFUNCTION(BlueprintCallable, Category = "Example Nodes")
static void MultipleOutputs(int32& OutputInteger, FVector& OutputVector);

UFUNCTION(BlueprintCallable, Category = "Example Nodes")
static void HandleTargets(UPARAM(ref) TArray<FVector>& InputLocations, TArray<FVector>& OutputLocations);
```

### Shared, target-less utility nodes — `…Exposing_C++_to_Blueprints…`
```cpp
class DOCUMENTATIONCODE_API UTestBlueprintFunctionLibrary : public UBlueprintFunctionLibrary
```
A `UBlueprintFunctionLibrary` of `static` `BlueprintCallable`/`BlueprintPure`
functions gives global nodes with **no Target pin** — the idiomatic home for
helper math/utility you call everywhere.

## Scaffolding the C++ side of the boundary

`scripts/new_bp_exposed_cpp.sh <ClassName> [MODULE_API] [outdir]` writes a
`.h/.cpp` pair for an `AActor` subclass that demonstrates the whole pattern in
one file: `UCLASS(Blueprintable, BlueprintType)`, a
`UPROPERTY(EditAnywhere, BlueprintReadWrite)` tunable, a
`UFUNCTION(BlueprintCallable)`, and a `UFUNCTION(BlueprintImplementableEvent)`
hook (no C++ body — correctly). It validates the identifier, strips an
accidental `A/U/F` prefix, and refuses to overwrite. It writes **files only** —
no engine, no compile (none is installed). You then create the **Blueprint
child** in-editor (Content Browser → right-click the C++ class → *Create
Blueprint Class*) and implement `OnCollected` there.

`scripts/unreal.sh` is the shared engine wrapper; with no engine installed it
exits 127 with install instructions — so everything here is doc-sourced, not
compile-tested.

## Depth (in `references/`)

- `blueprint_anatomy.md` — the parts (Event Graph, Construction Script,
  Functions/Macros, Variables, Components), the BP types, event catalog, Pure vs
  Impure, the bytecode/compile model and what that means for performance.
- `cpp_blueprint_interop.md` — the full specifier reference, the C++-base /
  BP-child workflow, `BlueprintImplementableEvent` vs `BlueprintNativeEvent` (and
  the `_Implementation` rule), function libraries, UPARAM, deprecation, and the
  BP-vs-C++ decision matrix.
- `troubleshooting.md` — the errors that eat the most time (member not showing,
  the no-C++-body link error, the slow editor from Construction Script, etc.).
- `api/` — the embedded UE 5.6/5.7 Blueprints docs (Anatomy, Technical Guide,
  Workflows, Specialized Node Groups, Editor Reference, Introduction) — the
  source of truth. Grep it.

## What this covers / hands off to

Covers **Gameplay Programmer**, **Systems Designer**, and **Technical Designer**
work — the visual-scripting layer and the C++/BP exposure seam. Hands off to:

- `unreal-project-setup` — the buildable project + module this assumes (start there).
- `unreal-gameplay-cpp` — pure C++ gameplay: `AActor`/`UObject`, the C++ lifecycle
  (`BeginPlay`/`Tick`), spawning, `UPROPERTY`/reflection fundamentals. The hot
  paths you push *out* of Blueprint land here.
- `unreal-physics-and-ai` — collision/overlap details, movement, NavMesh, AI
  behavior (the events above wire into these).
- `unreal-ui-umg` — UMG widgets are Blueprints too; their event/graph model is the
  same as here.
- `unreal-rendering-materials`, `unreal-niagara-vfx`, `unreal-animation`,
  `unreal-audio` — the FX/anim/sound a `BlueprintImplementableEvent` hook fires.
- `unreal-build-deploy-multiplayer` — packaging, and the replicated-Custom-Event /
  networking side.
