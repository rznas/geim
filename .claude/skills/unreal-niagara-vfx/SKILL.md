---
name: unreal-niagara-vfx
description: >
  Build and control particle / visual effects in an Unreal Engine 5.6/5.7 C++
  game with Niagara (UE5's VFX system, which replaces the legacy Cascade). Use
  this whenever you are spawning a particle effect from gameplay — explosions,
  muzzle flashes, impact sparks, smoke, fire, beams, ribbons, magic, trails,
  weather — or driving an authored Niagara System's look from code. Reach for it
  any time the task is "spawn an effect at this location", "attach a particle
  system to the player/weapon", "spawn a Niagara System on hit / on death",
  "make the effect react to gameplay" (set its color/size/intensity/end-point
  from C++), "the particle parameter I set from code does nothing", "expose a
  User parameter", "should this emitter run on GPU or CPU", "the GPU emitter
  won't collide / can't read that data", "my effect spawns but never disappears
  / leaks", "convert this Cascade system to Niagara", or "debug why no particles
  show". It has the verified Niagara hierarchy (System > Emitter > Module + the
  Spawn/Update execution stack), the User-Parameter gameplay interface, the C++
  spawn API (UNiagaraFunctionLibrary::SpawnSystemAtLocation / SpawnSystemAttached
  + UNiagaraComponent::SetVariableFloat/Vec3/...), the GPU-vs-CPU trade-offs and
  limits, collisions, Data Channels, and the Niagara Debugger. Niagara *assets*
  are authored in the editor; this skill scaffolds and owns the C++ spawn/control
  side. Covers VFX Artist, Technical Artist, and Graphics Engineer work. Assumes
  a buildable project (unreal-project-setup).
---

# Unreal Niagara VFX (UE 5.6/5.7, C++)

Niagara is Unreal Engine 5's visual-effects system — it **replaces the legacy
Cascade** particle system (Cascade still ships but is on its way out; there is a
*Cascade-to-Niagara Converter* plugin for migration). You **author** a Niagara
System in the editor (System > Emitters > Modules); you **drive** it from gameplay
in C++ through the `UNiagaraComponent` and `UNiagaraFunctionLibrary`. This skill
is the C++ spawn/control side — it does not (and cannot) hand-author the `.uasset`.

> Snippets are doc-sourced from the embedded UE 5.6/5.7 Niagara documentation
> (`references/api/`) plus the engine runtime headers
> (`NiagaraFunctionLibrary.h`, `NiagaraComponent.h`); they are **not
> compile-tested** in this environment (no engine installed). The *concepts*
> (hierarchy, the execution stack, User Parameters, GPU/CPU, collisions) are
> grounded in the embedded artist-facing docs; the exact C++ signatures come from
> the runtime headers — grep `references/api/` for any concept claim and confirm
> a signature against your engine's headers before relying on it.

## The model in one paragraph

A **Niagara System** is the asset you spawn (one `UNiagaraSystem`). A System
contains one or more **Emitters**; each Emitter contains **Modules** stacked into
**groups** that run top-to-bottom: *System Spawn/Update → Emitter Spawn/Update →
Particle Spawn/Update*. Spawn stages run once (when the thing is created); Update
stages run every frame (`references/api/...Niagara_Key_Concepts.md`). Data flows
through **Namespaces** — `System.`, `Emitter.`, `Particle.`, `Engine.`, and the
one you care about from code: **`User.`**. Modules read/write within their group's
namespace but can only **read** from `User` (and `Engine`). That asymmetry is the
whole point: gameplay writes `User.` parameters, the simulation reads them.

## The one thing that trips everyone up

**You drive an effect through its User Parameters — you never poke a Module
directly.** The hierarchy is `System > Emitter > Module`, and a module only exists
inside the editor's authored stack; there is no runtime handle to "the Initialize
Particle module." Instead, the VFX artist promotes the value to a **User-namespace
parameter** (in the Niagara editor: a module input dropdown → *Make* → *Read from
new User parameter*; the docs call these "parameters which are promoted to the
Niagara System instance in the level" —
`references/api/...Caching_and_Reusing_your_System.md`,
`references/api/...Beam_Effect.md`). At runtime you spawn the System, get back a
`UNiagaraComponent`, and call `SetVariableFloat("Intensity", x)` /
`SetVariableVec3(...)` on it. The name must match the User parameter **exactly**
(case-sensitive), the type must match, and the System must actually expose it —
get any of those wrong and **the call silently does nothing** (the #1 "my
parameter does nothing" bug). See `references/spawning_and_control_cpp.md`.

The Spawn-vs-Update split is the second half: setting a `User` param *after* a
particle spawned only affects modules that read it in **Update** (re-read every
frame). A value read only in **Particle Spawn** is baked at birth — changing it
later won't retro-actively alter living particles, only newly spawned ones.

## Spawning a Niagara System from C++

`UNiagaraFunctionLibrary` is the spawn entry point (mirrors the Blueprint *Spawn
System at Location* / *Spawn System Attached* nodes). Two variants:

```cpp
#include "NiagaraFunctionLibrary.h"
#include "NiagaraComponent.h"

// Fire-and-forget at a world location (e.g. an impact / explosion):
UNiagaraComponent* FX = UNiagaraFunctionLibrary::SpawnSystemAtLocation(
    GetWorld(),
    ExplosionSystem,                 // UNiagaraSystem* (authored asset)
    HitLocation,                     // FVector
    FRotator::ZeroRotator,
    FVector(1.f),                    // scale
    /*bAutoDestroy=*/ true,          // self-cleans when finished
    /*bAutoActivate=*/ true);

// Attached to a component (e.g. a muzzle flash that follows the gun):
UNiagaraComponent* Muzzle = UNiagaraFunctionLibrary::SpawnSystemAttached(
    MuzzleSystem,
    WeaponMesh,                      // USceneComponent* to attach to
    TEXT("MuzzleSocket"),            // FName socket (NAME_None = root)
    FVector::ZeroVector, FRotator::ZeroRotator,
    EAttachLocation::KeepRelativeOffset,
    /*bAutoDestroy=*/ true);
```

**Keep the returned `UNiagaraComponent*`** if you want to set parameters, restart,
or deactivate it later. `bAutoDestroy = true` is the right default for one-shot
bursts so they clean themselves up — leaking persistent components is a common
cause of "the effect never disappears." Don't hand-type the actor boilerplate —
run **`scripts/new_niagara_spawner.sh <Class> <Module>`** to scaffold an `AActor`
that spawns attached + drives a `User` float. (Add `"Niagara"` to your
`.Build.cs` `PublicDependencyModuleNames` — the scaffolder prints the reminder.)

## Setting User parameters from C++

On the live `UNiagaraComponent`, typed setters mirror the User parameter's type:

```cpp
FX->SetVariableFloat(TEXT("Intensity"), 3.0f);
FX->SetVariableVec3 (TEXT("BeamEnd"),   TargetLocation);   // e.g. a beam end-point
FX->SetVariableLinearColor(TEXT("Tint"), FLinearColor::Red);
FX->SetVariableBool (TEXT("bLooping"), false);
// also: SetVariableInt, SetVariableVec2/Vec4, SetVariableActor,
//       SetVariableMaterial, SetVariableStaticMesh, ...
```

The function-library form `UNiagaraFunctionLibrary::SetNiagaraVariable*` exists for
the same job. The name is the **bare** User parameter name (no `User.` prefix in
these calls). The Beam tutorial shows the artist side of this exact pattern —
promoting a beam end-point to a User parameter so it can be set from outside the
System (`references/api/...Beam_Effect.md`). Full method list + the
"silently-does-nothing" checklist: `references/spawning_and_control_cpp.md`.

## GPU vs CPU emitters

Each **emitter** has a **Sim Target**: CPU or GPU
(`references/api/...Emitter_Settings.md`). It is set per-emitter in the asset, not
from C++. The trade-offs (verbatim grounding in
`references/api/...Scalability_and_Best_Practices.md`):

- **GPU** parallelizes Particle Spawn/Update — best for **high particle counts**
  (millions); most large sims are more performant on GPU.
- **CPU** is often better for **small** emitters (a GPU sim of 1 particle can cost
  as much as 64) and on **GPU-bound / low-GPU-memory platforms (mobile)**.
- **System & Emitter scripts always run on the CPU** regardless of Sim Target — so
  there's a fixed per-emitter overhead; reduce emitter/instance count to cut it.
- **GPU emitters can't do everything CPU ones can.** Notably **collisions**: GPU
  emitters historically use a low-accuracy **Depth Buffer** collision (off-screen
  particles vanish); accurate **GPU Ray Tracing Collisions** are *experimental* and
  require DX12 + hardware ray tracing
  (`references/api/...GPU_Raytracing_Collisions.md`). Some game-thread data reads
  are also CPU-only. Validate per-platform — don't assume GPU is always the win.

**Lightweight (stateless) emitters** (UE 5.4+) are a fixed-function, no-tick,
no-compile fast path with a limited module set — significantly cheaper when you
don't need stateful behavior (`references/api/...Lightweight_Emitters_Overview.md`).

## Niagara vs Cascade

Niagara is the current system; **Cascade is legacy and deprecated-in-progress**.
Niagara's wins: full artist control, a programmable graph+stack hybrid, GPU sims,
arbitrary data via **Data Interfaces**, and gameplay communication via **User
Parameters** and **Niagara Data Channels** (NDCs — a shared payload stream between
game code and Systems, e.g. batching many impact effects into one simulation;
`references/api/...Niagara_Data_Channels_Overview.md`). Migrate Cascade assets with
the **Cascade-to-Niagara Converter** plugin (right-click the Cascade asset →
*Convert to Niagara System*), then resolve the conversion-report warnings — some
modules/renderers convert only partially or not at all
(`references/api/...Cascade_to_Niagara_Converter_Plugin.md`). For new work, never
start in Cascade.

## Verifying

Niagara *assets* are authored in the editor — you can't scaffold or compile a
`.uasset` from a shell. The C++ spawn/control side compiles like any gameplay code
(`#include "NiagaraFunctionLibrary.h"`, `"Niagara"` in `.Build.cs`). There is **no
engine in this environment**, so build/cook verification goes through
`scripts/unreal.sh` (exits 127 with install guidance until `$UE_ROOT` points at a
UE 5.7 install). To confirm an effect actually plays / a parameter actually moves
the visual, use the in-editor **Niagara Debugger** HUD (particle counts, memory)
and Effect Types for budgeting (`references/troubleshooting.md`,
`references/api/...Niagara_Debugger.md`); hand live-build checks to
**unreal-build-deploy-multiplayer** / QA.

## References

- `references/niagara_model.md` — the System > Emitter > Module hierarchy, the
  Spawn/Update execution stack, namespaces, parameter types, GPU vs CPU, stateless
  emitters, Niagara vs Cascade.
- `references/spawning_and_control_cpp.md` — the C++ spawn functions, the
  `UNiagaraComponent` `SetVariable*` API, the User-Parameter contract, lifecycle
  (Activate/Deactivate/bAutoDestroy), and the scaffolder.
- `references/troubleshooting.md` — parameter does nothing, no particles, effect
  never disappears, GPU collision/data limits, magenta, Cascade-migration warnings,
  the Niagara Debugger.
- `references/api/` — the embedded UE 5.6/5.7 Niagara doc pages (source of truth;
  grep before claiming an API).

## What this covers / hands off to

**Covers:** VFX Artist (explosions, particles, special effects), Technical Artist
(bridging the authored asset and gameplay code), Graphics Engineer (rendering /
visual effects). Built on **unreal-project-setup** (the buildable project) and
driven from gameplay logic written with **unreal-gameplay-cpp**.

**Hands off to:** **unreal-rendering-materials** (the Materials that Niagara
renderers draw with — sprite/mesh/ribbon materials, emissive for bloom),
**unreal-physics-and-ai** (hit/overlap detection that *triggers* a spawn),
**unreal-blueprints** (the Blueprint side of Spawn System / Set Niagara Variable
nodes), **unreal-animation** (Anim Notify-driven FX), and
**unreal-build-deploy-multiplayer** (shipping + verifying the effect in a real
build). Replaces nothing else in the suite — it owns Niagara end-to-end.
