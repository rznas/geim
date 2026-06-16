# Blueprint / C++↔BP troubleshooting

The errors that eat the most time at the visual-scripting layer and the C++/BP
seam. Grounded in `api/` (Exposing Gameplay Elements, Exposing C++ to Blueprints,
Construction Script, Best Practices, Custom Events, Compiler Overview).
Doc-sourced, not compile-tested (no engine installed).

## "My C++ variable / function doesn't show up in the Blueprint"

The #1 cause: **the member isn't exposed, or is exposed on the wrong axis.**
- A variable needs `UPROPERTY(BlueprintReadOnly)` (get node) or `BlueprintReadWrite`
  (get+set). **`EditAnywhere` alone is NOT enough** — that's the Details panel
  only, not the graph (`…Exposing_Gameplay_Elements…`). Want both panel + graph:
  `UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="…")`.
- A function needs `UFUNCTION(BlueprintCallable)` or `BlueprintPure`.
- The member must be inside a `UCLASS`/`USTRUCT` with `GENERATED_BODY()` and
  reflected — plain C++ members are invisible to the reflection system.
- For the *class itself* to be a BP parent it needs `UCLASS(Blueprintable)`.
- Then **recompile the C++ and restart/refresh the editor**, and **recompile the
  Blueprint** — the node won't appear until the generated class is rebuilt.

## "Unresolved external / link error on my BlueprintImplementableEvent"

You wrote a C++ body for a `BlueprintImplementableEvent`. **Don't** — it *"does
not have a native implementation"* (`…Exposing_Gameplay_Elements…`); the engine
generates the thunk. Declare it in the `.h` and **only call** it from C++; leave
the `.cpp` empty for that function. If you need a C++ default, use
`BlueprintNativeEvent` instead and implement `FunctionName_Implementation()`.

## "BlueprintNativeEvent: my override / default isn't called"

- Write the C++ default in **`MyFunction_Implementation()`**, not `MyFunction()`
  (`…Blueprint_Interface_Implement_Interface…`).
- **Call the bare `MyFunction()`** from other C++ code — calling
  `MyFunction_Implementation()` directly bypasses the Blueprint override.
- To run the C++ default *and* the BP override, in the Blueprint right-click the
  event/function entry and choose **Add Call to Parent**.

## "The editor is slow / chugs when I move or edit this actor"

Heavy work in the **Construction Script**. It *"runs following the Components list
when an instance of a Blueprint Class is created"* (`…Construction_Script.md`) —
and an instance is re-created on **every editor edit** (move, property change,
recompile), not just at runtime. World traces, spawning, big loops there re-run
constantly. **Move runtime/per-frame logic to the Event Graph** (`BeginPlay`/
`Tick`/events); keep the Construction Script to cheap, context-aware setup
(choose a mesh, size to fit). `BeginPlay`/`Tick` do not run in the Construction
Script. (Level Blueprints have no Construction Script at all.)

## "My game runs slow and the hot code is in Blueprint"

Blueprint graphs compile to **VM bytecode**, slower than native C++
(`…Compiler_Overview.md`, `…Best_Practices.md`). Blueprints are *"best suited to…
event-driven functionality… that don't get called every frame."* If profiling
shows a hot path — every-tick math, large data, a crowd of actors — **move just
that section into C++** and keep the rest in BP (`…Exposing_C++_to_Blueprints…`).
There is **no global nativization toggle in UE5** (it was removed); the compiler's
`FKismetCppBackend` output is debug-only.

## "Event Tick / Event BeginPlay isn't firing"

- `BeginPlay` fires at game start (or immediately when spawned later) — **not** in
  the editor, and **not** in the Construction Script (`…Events.md`).
- Only **one** `Event Tick` / one of each built-in event per graph. For an actor,
  ticking may be disabled — ensure `PrimaryActorTick.bCanEverTick = true` (set in
  the C++ constructor or the BP class defaults).
- An event *"can only execute a single object"* — string multiple actions
  linearly off the one exec pin.

## "Event AnyDamage / PointDamage / RadialDamage never triggers"

These *"execute only on the server. For single player games, the local client is
considered the server"* (`…Events.md`). In a networked build, run the damage logic
on the authority.

## "Overlap / Hit event never fires"

Overlap needs **Generate Overlap Events = true on both actors** and an
overlap-allowing collision response; Hit needs **Simulation Generates Hit Events**
(or a swept move that gets blocked) (`…Events.md`). Collision setup itself lives in
`unreal-physics-and-ai` (the response matrix is the usual culprit).

## "Custom Event errors after I changed its inputs"

Changing a Custom Event's parameters errors all caller nodes
(`…Events_Custom_Events.md`). **Refresh Nodes** on each caller (right-click → Refresh
Nodes), or *File → Refresh All Nodes*. A *"Warning! Unable to find function with
name [CustomEvent]"* bar usually just means **Compile** the Blueprint.

## "Should this be a Function or a Macro?" (and macro pitfalls)

- Need to **override it in a child BP**, **call it on another object**, or call it
  from another Blueprint → **Function**.
- Need **latent nodes** (Delay, timelines) or **multiple exec wires** in/out →
  **Macro** (`…Best_Practices.md`). Functions allow neither.
- Macro changes only propagate when a referencing Blueprint **recompiles** (macros
  are expanded inline at compile, `…Blueprints_Visual_Scripting_Overview.md`).

## "My Pure node runs more often than I expect"

A **Pure** function *"will be called one time for each node it is connected to"*
(`…Functions.md`) — it has no exec pin and is re-evaluated wherever its output is
needed. If it's expensive, make it **Impure** (`BlueprintCallable`) and cache the
result into a variable once, then read the variable.

## "A C++ ref parameter shows up as an output pin, not an input"

By design — *"making a parameter pass by reference will make it an output pin"*
(`…Exposing_Gameplay_Elements…`). Wrap it in `UPARAM(ref)` to keep it an input:
`static void Fn(UPARAM(ref) TArray<FVector>& In, TArray<FVector>& Out);`.

## "Level Blueprint logic doesn't carry to other levels / I can't reuse it"

Level Blueprints are **specific to their level** and can't be created manually
(`…Best_Practices.md`, `…Overview.md`). For reusable behavior use a **Blueprint
Class** — *"the best way to get reusable behavior."* Functions copied from a Level
Blueprint into a Blueprint Class re-scope automatically.

## "Where do I even put this — BP or C++?"

See the decision matrix in `cpp_blueprint_interop.md` (speed × complexity of
expression). Short version: event-driven / designer-tuned / prototype → Blueprint;
hot / large-data / awkward-as-nodes / foundational → C++. The endorsed pattern is
a **C++ base class with an exposed API + a Blueprint child** that sets defaults and
implements the event hooks.
