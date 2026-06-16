# Physics & AI troubleshooting — reference

Symptom → cause → fix. Grounded in the embedded docs (`references/api/`); C++
fixes are doc-sourced (UE 5.6/5.7), not compile-tested here.

---

## Collision & overlap

### My overlap event (`OnComponentBeginOverlap`) never fires
The #1 trap, in check order:
1. **`Generate Overlap Events` is OFF** on one or both components.
   `Comp->SetGenerateOverlapEvents(true)` on **both**. "Overlap with Generate
   Overlap Events disabled behaves exactly like Ignore." (Collision_Overview.)
2. **The response matrix says Ignore.** Both sides must be at least Overlap on
   each other's object type. `SetCollisionResponseToChannel(ECC_X, ECR_Overlap)`.
3. **Collision Enabled is `NoCollision` or `Physics Only`.** Overlaps are a
   *spatial query* → need `Query Only` or `Collision Enabled`. (Collision_Response_Reference.)
4. **The handler isn't `UFUNCTION()`.** `AddDynamic` binds by reflected name; a
   non-`UFUNCTION` handler won't bind.
5. Neither object ever moves *and* neither does overlap queries → no query runs.

### A hit event (`OnComponentHit`) never fires
- Hit needs **Block on BOTH sides** (Collision_Overview). One-sided Block = pass-through.
- Needs **Simulation Generates Hit Events** on the reporting body
  (`SetNotifyRigidBodyCollision(true)`). (Physics_Bodies_Reference, Collision section.)
- The reporting body usually needs to be the simulated one — "the box is not set
  to Simulation Generates Hit Events, it will not generate an event for itself."

### The actor falls through the floor / passes through walls
- The mover and the floor aren't **Block/Block**. Set both (e.g. floor =
  `BlockAll`, character capsule = `Pawn` preset which blocks WorldStatic).
- The floor has **no collision shape** (a mesh with collision disabled / no Body
  Setup). Add simple collision in the Static Mesh Editor.
- A fast object **tunnels** through a thin wall → enable **CCD**
  (`SetUseCCD(true)`) on the fast body.

### `SetSimulatePhysics(true)` does nothing
- **Collision Enabled is `NoCollision` or `Query Only`.** A rigid body needs
  `Physics Only` or `Collision Enabled`. (Collision_Response_Reference.)
- The mesh only has **complex (trimesh) collision** → "you cannot simulate the
  object" with Use-Complex-As-Simple (Simple_vs_Complex_Collision). Add *simple*
  collision (a Body Setup with box/sphere/capsule/convex).

### A simulated body jitters, vibrates, or tunnels
- You're calling `SetWorldLocation`/`SetActorLocation` on it every tick — you're
  fighting the Chaos solver. Drive it with `AddForce`/`AddImpulse`/
  `SetPhysicsLinearVelocity`. Use `SetWorldLocation` only on **kinematic** bodies.
- Enable **CCD** for fast/thin contacts; enable physics **sub-stepping** for
  heavy/fast sims (`..._Physics_Sub-Stepping.md`).

### Character won't climb a slope / slides off a ramp
- Slope steeper than the CMC **Walkable Floor Angle** (~45°). Lower the ramp, or
  use **Walkable Slope Override > Increase Walkable Slope** on the surface's body
  (`..._Walkable_Slope.md`).
- "No walking here" surface that's still walkable → **Decrease Walkable Slope**.

### Pawn slides off a chair/ledge instead of resting on it
- Simple collision is a coarse proxy (the seat is one angled hull). Use **Use
  Complex Collision As Simple** on that mesh so the pawn lands on the real
  geometry (Simple_vs_Complex_Collision example).

---

## Traces

### My line trace hits nothing / hits the wrong thing
- Targets' **trace response to your channel** is Ignore. By-channel traces
  respect each actor's trace response; set the target to Block/Overlap your
  channel, or trace **by object type** instead.
- You traced against `ECC_Visibility` but the target has its Visibility response
  off (e.g. effects meshes). Pick the right channel or a custom one.
- Zero-length trace (Start == End) or the trace starts *inside* the target →
  push the start out, or `AddIgnoredActor(this)`.
- Forgot `bTraceComplex` for per-poly precision on a trimesh.

### The trace catches my own actor
- `Params.AddIgnoredActor(this)` (the docs' "trace through itself").

### A line trace misses a crouching/short target
- Use a **shape trace** (`SweepSingleByChannel` with a sphere/box/capsule) — the
  docs' "vision cone" example. A line is infinitely thin.

---

## AI: the brain

### The AI never moves
1. **No baked NavMesh.** Drop a `NavMeshBoundsVolume` covering the area; press
   **P** — no green = no navigation, full stop (Basic_Navigation).
2. **The Behavior Tree never ran.** The controller must `RunBehaviorTree(BT)` on
   possession, and the Pawn's **Auto Possess AI** must be set
   (PlacedInWorld/Spawned). Check `BehaviorTree` is assigned.
3. **`MoveTo` target is empty/unreachable.** The Blackboard key is null, or the
   destination is off the NavMesh. `GetRandomReachablePointInRadius` returned
   false (handle the fail branch).
4. **`MaxWalkSpeed` is 0**, or the pawn has no `CharacterMovementComponent`.
5. Build.cs missing `"AIModule"`, `"GameplayTasks"`, `"NavigationSystem"` →
   link/include errors before any of this.

### The Behavior Tree runs but never enters Chase
- The **Blackboard Decorator** on the Chase branch checks a key that's never set.
  Confirm perception writes `HasLineOfSight`/`EnemyActor` (section below).
- **Observer Aborts** is `None` → the tree won't interrupt Patrol to start Chase.
  Set it to **Both** (Quick_Start §7).
- Keys mismatch: the Decorator's key name ≠ the name perception writes. Make them
  identical (the scaffold defaults to `EnemyActor` / `HasLineOfSight`).

### The guard never sees the player
- **No Sight sense configured** on the AIPerception component
  (`ConfigureSense(SightConfig)`), or `SightRadius` too small / target outside
  `PeripheralVisionAngleDegrees`.
- **Affiliation filtering** drops the target: affiliation is C++-only; from BP
  enable **Detect Neutrals** and filter by `Actor->ActorHasTag("Player")`
  (AI_Perception).
- The target isn't a **stimulus source**: add a `UAIPerceptionStimuliSourceComponent`
  registered for Sight (or rely on pawns being auto-registered).
- You bound the wrong event. Use **`OnTargetPerceptionUpdated`** (single actor +
  `FAIStimulus`); read `Stimulus.WasSuccessfullySensed()`.
- Handler not `UFUNCTION()` → `AddDynamic` doesn't bind.

### The AI hears nothing
- Hearing needs a **Report Noise Event** to be emitted
  (`UAISense_Hearing::ReportNoiseEvent` / `MakeNoise`) — sight-style auto-registration
  doesn't apply. Check `HearingRange` covers the noise (AI_Perception, AI Hearing).

### The AI chases forever after losing sight
- No "give up" timer. On lose-sight (`WasSuccessfullySensed()==false`), start a
  timer that clears `HasLineOfSight`; clear/invalidate it if the player is
  re-sensed first (Quick_Start §6, `Set Timer by Event` + `Clear and Invalidate
  Timer by Handle`).

### EQS query returns nothing / errors
- **EQS not enabled:** Project Settings > Plugins > Environment Query Editor
  (EQS_Overview).
- All Items filtered out — a Test's filter is too strict, or the Generator
  produced no Items (bad Context / radius). Preview with the **EQS Testing Pawn**.

---

## Quick reference: console & debug

| Tool | How |
|------|-----|
| Visualize NavMesh | press **P** in the editor / `show Navigation` in PIE |
| AI debugging HUD | **`** (apostrophe) in PIE; **Numpad 4** = Perception, others for BT/EQS |
| Physics visualization | Chaos Visual Debugger (`..._Chaos_Visual_Debugger_*`) |
| Draw a trace | `DrawDebugLine` / `DrawDebugSphere` (`DrawDebugHelpers.h`), or the trace node's `Draw Debug Type` |
| Validate the build/toolchain | `scripts/unreal.sh build ...` (127 here — no engine installed) |

---

## "It compiles but crashes" (cross-ref `unreal-gameplay-cpp`)

- A `UPROPERTY()`-less raw `UObject*`/component pointer got garbage-collected →
  null deref. Store engine objects in `UPROPERTY() TObjectPtr<...>` (the scaffold
  does). This bites perception/blackboard/BT references especially.
- `CreateDefaultSubobject` called outside the constructor → use the constructor
  for default subobjects (PerceptionComp, SightConfig).
- Missing `.generated.h` include or `GENERATED_BODY()` → see `unreal-gameplay-cpp`.
