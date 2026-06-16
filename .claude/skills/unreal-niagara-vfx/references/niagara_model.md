# The Niagara Model — Hierarchy, Execution Stack, Namespaces, GPU/CPU

Grounded in the embedded pages under `references/api/` (notably
`...Niagara_Key_Concepts.md`, `...Niagara_Overview.md`, `...Emitter_Settings.md`,
`...Scalability_and_Best_Practices.md`, `...Lightweight_Emitters_Overview.md`,
`...Cascade_to_Niagara_Converter_Plugin.md`). Niagara is UE5's VFX system and
**replaces the legacy Cascade**.

## Hierarchy: System > Emitter > Module

Three nested authoring objects (`...Niagara_Key_Concepts.md`):

- **System** — the asset you spawn at runtime (one `UNiagaraSystem`). A container
  for emitters; it combines them into one effect, and has a Sequencer timeline to
  control how its emitters behave. "When editing a system… you can modify and
  override any parameter, module or emitter that is in the system."
- **Emitter** — a single-purpose, reusable container for modules (stack paradigm).
  One emitter = one cohesive sub-effect (e.g. "sparks", "smoke", "core flash").
  Parameters transfer up from modules to the emitter level.
- **Module** — the smallest editable unit (graph paradigm): an HLSL-ish node graph
  authored in the Script Editor. Modules "speak to common data, encapsulate
  behaviors, and stack together." *Items* (system/emitter properties, renderers)
  are parts you can't author — "a module is an item, but an item is not a module."

Niagara deliberately combines the **stack** paradigm (Cascade-like, modular &
readable — used by systems/emitters) with the **graph** paradigm (Blueprint-like,
fine control — used by modules).

## The execution stack: Spawn vs Update, in groups

"Particle simulation… conceptually operates as a stack — simulation flows from the
top… to the bottom, and executes modules in order." Every module belongs to a
**group** describing *when* it runs, and within a group there are **stages**
(`...Niagara_Key_Concepts.md`):

Execution order (top → bottom), each with a **Spawn** and an **Update** stage:

1. **System Spawn** / **System Update**
2. **Emitter Spawn** / **Emitter Update**
3. **Particle Spawn** / **Particle Update**

- **Spawn** stages run **once**, in the first frame that thing exists. The System's
  Spawn runs when the System is instantiated and activated. A Particle's Spawn runs
  **once per new particle**, the frame it's born.
- **Update** stages run **every frame** the system/emitter/particle is active.
- Advanced stages layer on: **Events** (a particle generates an event, a handler
  emitter consumes it — same frame where possible) and **Simulation Stages** (an
  advanced **GPU** feature; multiple Spawn/Update passes in sequence, used for
  fluids/grids).

**Why this matters for gameplay:** a `User` parameter read in **Particle Spawn** is
baked into each particle at birth — changing it later only affects *future*
particles. A value read in **Update** is re-read every frame, so changing it
animates *living* particles too. (See `spawning_and_control_cpp.md`.)

## Namespaces — and why `User` is special

Data lives in namespaced **parameters**. The read/write rules enforce a one-way
flow down the stack (`...Niagara_Key_Concepts.md`):

| Module Group | Read From                              | Write To  |
| ------------ | -------------------------------------- | --------- |
| System       | System, Engine, User                   | System    |
| Emitter      | System, Emitter, Engine, User          | Emitter   |
| Particle     | System, Emitter, Particle, Engine, User| Particle  |

Note that **every** group can **read** `User` and `Engine` but **none can write**
them. That is the gameplay contract: code/Blueprint writes `User.` parameters from
outside; the simulation reads them. `Engine.` is engine-fed data
(`Engine.Owner.Position`, delta time, etc.).

### Parameter types (`...Niagara_Overview.md`)

- **Primitive** — numeric (float, int, vectors, etc., varying precision/width).
- **Enum** — one of a fixed named set.
- **Struct** — a combined set of primitives/enums.
- **Data Interfaces** — functions providing data from external sources (other UE
  systems or outside apps); also how you read meshes, curves, audio, etc.

### User Parameters (the gameplay interface)

"Niagara supports **User Parameters**. These are parameters which are promoted to
the Niagara System **instance in the level**" (`...Caching_and_Reusing_your_System.md`).
They are how you parameterize one System for many uses, and how C++/Blueprint and
Sequencer drive an effect. The artist promotes a module input to a User parameter
in the Niagara editor (input dropdown → *Make* → *Read from new User parameter*);
the Beam tutorial walks this exact flow to expose a beam end-point so it can be set
"from outside the Niagara system" (`...Beam_Effect.md`). You then set it at runtime
through the `UNiagaraComponent` — see `spawning_and_control_cpp.md`.

## GPU vs CPU emitters

**Per-emitter** setting (`Sim Target` in Emitter Properties,
`...Emitter_Settings.md`): "This determines whether the simulation is performed on
the CPU or the GPU." Set in the asset, **not** from C++. From
`...Scalability_and_Best_Practices.md`:

- Niagara runs scripts on a SIMD-style **virtual machine** so the same scripts work
  on CPU and GPU. Sim Target only changes the target of the **Particle**
  Spawn/Update/Simulation-Stage scripts.
- **System & Emitter scripts always run on the CPU** (so they can talk to the game
  thread) — there's a fixed per-emitter overhead regardless of Sim Target. Cut it
  by reducing emitter count / instance count, not by switching to GPU.
- **GPU** parallelizes well → best for **high particle counts**; usually more
  performant and allows far more particles.
- **CPU** can be better for **small** emitters (a 1-particle GPU sim can cost as
  much as 64) and on **GPU-bound or low-GPU-memory platforms (mobile)**.
- "Validate these performance assumptions when developing" — it's hardware- and
  platform-dependent; don't assume GPU always wins.

### What GPU emitters can't do (the limit that bites)

- **Collisions:** GPU emitters traditionally use the low-accuracy **Depth Buffer**
  collision — off-screen / occluded particles disappear. Accurate **GPU Ray
  Tracing Collisions** are **experimental** and need DX12 + hardware ray tracing,
  and run one frame behind (`...GPU_Raytracing_Collisions.md`). CPU emitters get
  full scene collision via the Collision module.
- Some **game-thread data reads** and certain Data Interfaces are CPU-only.
- **Data Interfaces as User Parameters** cost extra memory on GPU (a new UObject per
  component / per `Set Asset`) — move data interfaces up the stack when you can
  (`...Scalability_and_Best_Practices.md`).

## Lightweight (stateless) emitters — UE 5.4+

A fixed-function fast path (`...Lightweight_Emitters_Overview.md`): no tick (or
minimal), **no compilation**, much lower memory and CPU/render cost, and emitter/
instance count stops mattering for perf. Trade-off: a **fixed module set only**
(Acceleration Force, Add Velocity, Drag, Gravity, Initialize Particle, Shape
Location, Scale Sprite/Mesh Size, Sub UV Animation, etc.) — **no custom modules,
scratchpads, or dynamic inputs**. Add via right-click in the System Overview →
*Add stateless emitter*; systems can mix stateless and stateful emitters, but a
fully-stateless system is the most performant. Use stateless for cheap,
non-reactive ambient/burst FX.

## Niagara vs Cascade (migration)

Cascade is the **legacy** particle system, deprecated-in-progress. Migrate with the
**Cascade-to-Niagara Converter** plugin (`...Cascade_to_Niagara_Converter_Plugin.md`):
enable *FX > Cascade To Niagara Converter*, right-click a Cascade asset →
*Convert to Niagara System* (creates `<name>_Converted`). Then open the result and
read the **Niagara Log** conversion report — several modules/renderers are
**unsupported or partial** (Event Generator/Receiver, Particle Attractor, Beam &
AnimTrail renderers = N; Ribbon renderers & Cascade LODs = partial; LOD conversion
operates on LOD 0 only). Fix issues by hand. **For new work, start in Niagara, not
Cascade.**

## Niagara Data Channels (NDCs) — game ⇄ Niagara at scale

A defined **payload stream** for communication between game code and Systems, or
between Systems (`...Niagara_Data_Channels_Overview.md`). Key use: instead of
spawning many separate impact Systems (expensive when the player spawns lots
rapidly), spawn **one** continuous-listener System that reads the channel and
emits all bursts — a big perf win. Components: a **Data Channel Asset** (the
payload + the list of Systems), a **listener System** (Infinite Loop Behavior +
*Complete if Unused*), and a **Blueprint/C++** writer that pushes the payload.
See `troubleshooting.md` for when to reach for NDCs vs plain per-hit spawns.
