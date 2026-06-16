# Blueprint Anatomy — the parts, the types, the event flow, the compile model

Synthesis of the embedded UE 5.6/5.7 docs in `api/`. Grep those for the
authoritative text. Doc-sourced, not compile-tested (no engine installed).

A **Blueprint Class** ("Blueprint" for short) is *"an asset that allows content
creators to easily add functionality on top of existing gameplay classes…
[defining] a new class or type of Actor which can then be placed into maps as
instances"* (`api/…Anatomy_of_a_Blueprint.md`). It is created visually in the
editor and saved as a binary `.uasset` — **not** a text file. So a Blueprint is a
*subclass*: of a built-in engine class (AActor, APawn, AHUD…) or of one of your
own C++ classes (the C++-base / BP-child pattern — see `cpp_blueprint_interop.md`).

## The parts of a Blueprint

From `api/…Anatomy_of_a_Blueprint.md` and `api/…Blueprints_Visual_Scripting_Overview.md`:

### Components
The Components window adds sub-objects — `StaticMeshComponent`,
`SkeletalMeshComponent`, collision (`CapsuleComponent`/`BoxComponent`/
`SphereComponent`), `MovementComponent`, lights, etc. A Blueprint *"does not
always need to contain scripted behavior"* — a non-interactive lightpost is just
a mesh + light component. Components added in the list can be assigned to instance
variables so the graphs (here or in other Blueprints) can reach them.

### Construction Script
*"The Construction Script runs following the Components list when an instance of
a Blueprint Class is created"* (`api/…Construction_Script.md`). Its entry point
is the always-present **ConstructionScript** node. It is for **context-specific
setup**: a light Blueprint can trace the ground and pick a matching mesh; a fence
can trace outward to size itself to a gap.

**Critical timing:** an "instance is created" includes **editor edits** — moving
the actor in the level, changing a property, recompiling. So the Construction
Script re-runs constantly while you author the level. **Keep it cheap.** Runtime
and per-frame logic belongs in the Event Graph, not here. **Level Blueprints have
no Construction Script.**

### Event Graph
*"A node graph that uses events and function calls to perform actions in response
to gameplay events"* — *"where interactivity and dynamic responses are setup,"*
and it applies to **all instances** of the Blueprint. This is the runtime brain:
`BeginPlay`, `Tick`, overlaps, damage, custom events.

### Functions and Macros
Both let you *"reuse sections of script"* (`api/…Anatomy…`, `api/…Best_Practices.md`),
but differ under the hood:

| | **Function** | **Macro** |
| --- | --- | --- |
| How it compiles | a real call (its own UFunction) | copy-pasted/expanded inline at compile |
| Latent nodes (Delay, etc.)? | **No** | **Yes** |
| Multiple exec wires in/out? | No (single entry, single exec out) | **Yes** |
| Override in child Blueprints? | **Yes** | No |
| Call on another object / cross-BP? | **Yes** (can target) | No |
| Access specifiers | Public / Protected / Private | n/a |

Rule of thumb (`…Best_Practices.md`): *"use a macro if there's a quick bit of
functionality you want to reuse everywhere. But if you might want to tweak that
behavior in children of the Blueprint, or you want to access it directly from
another Blueprint, it's better to use a function."* Macros live in a **Macro
Library** (no compile of their own; changes propagate only when a referencing
Blueprint recompiles).

#### Pure vs Impure functions (`api/…Functions.md`)
- **Impure** (`BlueprintCallable`, or *Pure* unchecked): may modify state; **has
  white exec pins**; runs in exec-wire order.
- **Pure** (`BlueprintPure`, or *Pure* checked): *"promise not to modify state"*;
  **no exec pins**, wired only to data pins; auto-executed by the compiler when
  its output is needed — **once per node it feeds** (so an expensive pure node
  fanned out to many consumers runs many times). Use for getters/operators only.

### Variables (`api/…Anatomy…`, `…Best_Practices.md`)
- **Class variables** persist on the instance; use for refs to components/other
  actors and anything you want public to other Blueprints.
- **Local variables** are function-scoped scratch space, discarded when the
  function returns.

## Types of Blueprints (`api/…Blueprints_Visual_Scripting_Overview.md`)

| Type | What it is | Use it for |
| --- | --- | --- |
| **Blueprint Class** | reusable subclass, droppable into any level, any number of copies | the workhorse — actors, pawns, pickups, gameplay objects |
| **Data-Only Blueprint** | a BP Class with only inherited graphs/vars/components; tweak defaults, add nothing new | designer variants of a base (replaces archetypes); "converts" to a full BP by adding logic |
| **Level Blueprint** | one per level, a level-wide global event graph; **cannot be created manually**; **no Construction Script** | level one-offs: trigger a cinematic, open a door after all enemies die, level streaming, Sequencer |
| **Blueprint Interface** | function signatures only — no implementation, no variables, no components, no graphs | a shared contract so unrelated Blueprints can be called the same way (see `cpp_blueprint_interop.md`) |
| **Blueprint Macro Library** | container of reusable Macros | shared node groups with latent nodes / multiple exec wires |
| **Blueprint Utility (Blutility)** | editor-only BP that runs editor actions | tools, batch operations on selected actors |

The UnrealScript→Blueprint→C++ mapping (same overview page) is the mental model
for "where does this live": `.uc file` → **Blueprint Asset** → `.h/.cpp`;
`UClass` → **UBlueprintGeneratedClass** → `UClass`; `Function` → **Graphs/Events**
→ `UFunction()`; `Variable` → **Variable** → `UProperty()`; `defaultproperties{}`
→ **Class Defaults** → native constructor.

## Event flow — the Event Graph (`api/…Events.md`, `api/…Events_Custom_Events.md`)

Events *"are nodes that are called from gameplay code to begin execution of an
individual network within the EventGraph."* Constraints: **only one of each
built-in event type per graph**, and *"an event can only execute a single object"*
— chain multiple actions linearly off the exec pin.

| Event | Fires | Notable outputs / notes |
| --- | --- | --- |
| **Event BeginPlay** | game start, or immediately when an actor is spawned later | the standard init point (set health/score, etc.) |
| **Event Tick** | every frame | **Delta Seconds** (frame time) — scale motion by it; costs every frame |
| **Event EndPlay** | actor leaves the world | **End Play Reason** enum; *"Destroyed event will be deprecated… functionality incorporated into EndPlay"* |
| **Event ActorBeginOverlap / EndOverlap** | overlap starts/stops | needs *Generate Overlap Events = true* on both actors + overlap-allowing response; outputs **Other Actor** |
| **Event Hit** | blocking collision | needs *Simulation Generates Hit Events* (or a sweep that's blocked); outputs full **HitResult** |
| **Event AnyDamage / PointDamage / RadialDamage** | damage applied | **server only** (in single-player the client *is* server); damage, instigator, causer, hit info |
| **Event ReceiveDrawHUD** | per-frame HUD draw (HUD class only) | Size X/Y; required parent for HUD draw nodes |
| **Custom Event** | only when you call it | user-named, callable many times & cross-graph, can be set **Replicated** for multiplayer |

**Custom Events** (`…Events_Custom_Events.md`): create with *Add Custom Event…*,
add typed inputs with defaults, call via *Call Function → [name]*. They tidy
graphs by routing many exec sources to one network without crossing wires. If you
change a Custom Event's inputs, **Refresh Nodes** on all callers or you get
compile errors ("Unable to find function with name…" usually just means *Compile*).

## How Blueprints run — the compile/perf model (`api/…Blueprint_Compiler_Overview.md`)

*"Blueprints, like regular C++ classes, need to be compiled before they can be
used in-game."* Hitting **Compile** turns the graphs+properties into a
**UBlueprintGeneratedClass**. The pipeline: Clean the class → create properties →
build the function list (event graphs are merged into one "uber graph," a stub
per Event node) → bind/link → compile functions into `FKismetCompiledStatement`s
→ the **FKismetCompilerVMBackend** emits **UnrealScript VM bytecode** serialized
into each function's script array → copy CDO → re-instance live objects.

The takeaway for performance: **Blueprint graphs run as bytecode on a VM, so they
are slower than native C++** (`…Best_Practices.md`, `…Exposing_C++_to_Blueprints.md`).
That's fine for event-driven logic; it bites on hot, every-tick, large-data work
— which is the signal to move that piece into C++ (see the decision matrix in
`cpp_blueprint_interop.md`). Note the `FKismetCppBackend` emits *"C++-like code
for debugging purposes only"* — it is **not** a shipping nativization path (UE4's
Blueprint Nativization was removed in UE5).
