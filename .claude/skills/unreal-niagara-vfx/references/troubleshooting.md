# Niagara Troubleshooting

Symptom → cause → fix. Concepts grounded in `references/api/`; C++ signatures from
the engine runtime headers (not compile-tested here). For the model behind these,
see `niagara_model.md`; for the spawn/control API, `spawning_and_control_cpp.md`.

## "I set the parameter from C++ and nothing happens"

The single most common Niagara-from-code bug. Walk this checklist:

1. **The System doesn't actually expose that User parameter.** You can only drive
   `User.` parameters that the artist promoted in the Niagara editor (input
   dropdown → *Make > Read from new User parameter*, `...Beam_Effect.md`). If it
   isn't in the **Parameters** panel under the **User** namespace, your `SetVariable`
   is a no-op. Add it (or ask the VFX artist to).
2. **Name mismatch.** `SetVariableFloat(TEXT("Intensity"), ...)` must match the User
   parameter name **exactly** and **case-sensitively**. Pass the **bare** name — no
   `User.` prefix in the C++ call.
3. **Type mismatch.** `SetVariableFloat` on a `Vector` User param silently fails.
   Match the setter to the type (`SetVariableVec3` for FVector, etc.).
4. **You set it before the component existed / on the wrong component.** Keep the
   `UNiagaraComponent*` returned by `SpawnSystem*` (or your `CreateDefaultSubobject`
   handle) and set on **that** instance. Each spawned instance is independent.
5. **Spawn vs Update.** If the value is only read in **Particle Spawn**, it's baked
   at birth — setting it later affects only newly spawned particles, not living
   ones. For live animation the System must read it in **Update**. (See
   `niagara_model.md`.)

## "No particles show up at all"

- **System not spawned / not activated.** Confirm `SpawnSystem*` returned non-null
  and `bAutoActivate` was true (or you called `Activate()`).
- **`UNiagaraSystem*` is null** — the asset reference wasn't assigned in the editor.
- **Spawn rate / count is 0**, lifetime is 0, or the emitter's scalability culled it
  on this platform/quality level (`...Emitter_Settings.md` scalability per-platform).
- **The component spawned off-screen / outside fixed bounds**, or pre-cull culled
  it (`bPreCullCheck`).
- **The renderer's material is missing/invalid** — see "magenta" below.
- Turn on the **Niagara Debugger Debug HUD** (below) — it prints active systems,
  emitters, and particle counts, so you can see exactly where the chain breaks.

## "The effect plays once but never disappears / it leaks"

- One-shot bursts should pass **`bAutoDestroy = true`** so the component
  self-destructs when finished. Without it you own the component forever.
- A **looping** system never "finishes" — you must `Deactivate()` /
  `DeactivateImmediate()` / `DestroyComponent()` it yourself.
- Spawning many short systems rapidly (bullets, footsteps) and not cleaning up =
  climbing component count. Use **pooling** (`ENCPoolMethod::AutoRelease`) or
  **Niagara Data Channels** — one shared listener system instead of N spawns
  (`...Niagara_Data_Channels_Overview.md`).
- A **Data Interface as a User Parameter** allocates a new UObject per component /
  per `Set Asset` — a memory leak source if you spawn a lot
  (`...Scalability_and_Best_Practices.md`).

## "The GPU emitter won't collide / behaves differently"

- **GPU collisions are limited.** The default GPU path is low-accuracy **Depth
  Buffer** collision — particles off-screen or behind objects just vanish
  (`...GPU_Raytracing_Collisions.md`). For accurate hits either use a **CPU**
  emitter (full Collision module against the scene) or enable **GPU Ray Tracing
  Collisions** — but that's **experimental**, needs **DX12 + hardware ray tracing**
  enabled in Project Settings, and runs **one frame behind**.
- **Some data reads are CPU-only.** If a GPU emitter can't read a value a CPU one
  could, that read isn't GPU-supported — move it up the stack or switch to CPU.
- Only the **Particle** scripts change with Sim Target; System/Emitter scripts
  always run on CPU (`...Scalability_and_Best_Practices.md`).

## "Should this be GPU or CPU?" (quick rule)

- **High particle count** (thousands–millions), parallel work → **GPU**.
- **Few particles**, or **mobile / GPU-bound** platforms, or you need full scene
  collision / game-thread reads → **CPU**.
- A 1-particle GPU sim can cost as much as 64 — don't put tiny emitters on GPU.
- **Profile per platform.** The breakdown is hardware-dependent
  (`...Scalability_and_Best_Practices.md`).

## "The particles render magenta / pink / black"

The renderer's **Material** is missing, failed to compile, or is incompatible with
the renderer/pipeline. Niagara renderers (Sprite/Mesh/Ribbon/Light) draw with a
Material you assign — fix it on the materials side: **unreal-rendering-materials**.

## "I converted a Cascade system and it has errors/warnings"

Expected. The **Cascade-to-Niagara Converter** logs a conversion report in the
**Niagara Log** — several modules/renderers are unsupported or partial (Event
Generator/Receiver, Particle Attractor, Beam & AnimTrail renderers, seeded modules
= not supported; Ribbon renderers + Cascade LODs = partial; only LOD 0 converts)
(`...Cascade_to_Niagara_Converter_Plugin.md`). Open the asset, read the report,
hand-fix or rebuild the flagged parts. Treat conversion as a **starting point**.

## "It's a performance problem"

- Use the **Niagara Debugger** Debug HUD overview: total systems, active emitters,
  particle count, memory (`...Niagara_Debugger.md`).
- Reduce **emitter count** and **instance count** — that fixed per-emitter CPU
  overhead is the lever, not Sim Target (`...Scalability_and_Best_Practices.md`).
- Move repeated/duplicate work and **Data Interfaces up the stack** (System/Emitter
  rather than per-particle).
- Use **Effect Types** to budget and distance-cull systems
  (`...Performance_Budgeting_Using_Effect_Types.md`).
- Use **lightweight (stateless) emitters** for cheap non-reactive FX
  (`...Lightweight_Emitters_Overview.md`).
- Sorting defaults to GPU and adds GPU + index-buffer cost; force CPU sort via
  `Niagara.GPUSorting.CPUToGPUThreshold` CVar if needed.

## The Niagara Debugger (your live diagnostic)

From `...Niagara_Debugger.md`:

- Open via **Tools > Debug > Niagara Debugger** in the Level Editor (a dockable
  panel), or by *watching* a specific emitter/parameter.
- **Debug HUD tab → Debug HUD Enabled** draws a heads-up overlay in the viewport.
- **Debug Overview** prints totals (systems, active emitters, particle count, total
  memory, scalability).
- **Debug Filters** (e.g. `*fountain*`, default `*` = everything) restrict the HUD
  to matching actors/components/systems/emitters — matches highlight yellow.
- **Debug System / Debug Particles** drill into per-system and per-particle values
  (cap the particle count shown, since there can be thousands).
- **Session Browser** points the debugger at PIE or a remote console session.
- Settings persist between sessions.

Use it to answer "is it even spawning / how many particles / which emitter / how
much memory" before guessing. There is **no engine in this environment** — run the
editor through `scripts/unreal.sh` (it exits 127 with install guidance until
`$UE_ROOT` is set).
