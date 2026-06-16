# Collision & Physics (Chaos) — reference

Depth for the SKILL. Concepts are grounded in the embedded docs
(`references/api/`); C++ method names are the canonical UE5 engine API and are
**doc-sourced, not compile-tested** here (no engine installed). Source pages
cited inline.

---

## 1. The collision response matrix (the whole ballgame)

Source: `references/api/Gameplay_Systems_Physics_Collision_Collision_Overview.md`
and `..._Collision_Response_Reference.md`.

Every collidable `UPrimitiveComponent` (a `UStaticMeshComponent`,
`USkeletalMeshComponent`, `UBoxComponent`, `USphereComponent`, `UCapsuleComponent`,
the `ACharacter` capsule, ...) carries four collision settings. The *outcome* of
any A-vs-B interaction is decided by **both** components' settings, evaluated
against each other's object type.

### 1a. Collision Enabled (the master switch)

| Value | Spatial queries (trace/sweep/overlap) | Simulation (rigid body) |
|-------|:---:|:---:|
| `NoCollision` | no | no — invisible to physics; best perf |
| `Query Only` (`QueryOnly`) | yes | no — character movement, triggers |
| `Physics Only` (`PhysicsOnly`) | no | yes — secondary sim (ragdoll-ish) |
| `Collision Enabled` (`QueryAndPhysics`) | yes | yes |

If collision is disabled it behaves "as if Ignore has been set for all Collision
Responses." A simulated rigid body therefore needs `Physics Only` or
`Collision Enabled` — not `Query Only`.

### 1b. Object Type (channel) — what the body *is*

`WorldStatic` (non-moving geo) · `WorldDynamic` (code/anim-moved: doors, lifts) ·
`Pawn` (player/AI capsule) · `PhysicsBody` (sim-driven) · `Vehicle` ·
`Destructible` · plus any **custom** channels you add in Project Settings >
Engine > Collision (see `..._Collision_Tutorials_Add_a_Custom_Object_Type...md`).

### 1c. Response — how it reacts to each other object type

| Response | Meaning |
|----------|---------|
| `Ignore` (`ECR_Ignore`) | this body ignores that interaction, period |
| `Overlap` (`ECR_Overlap`) | overlap event *can* occur if the other side is Overlap or Block |
| `Block` (`ECR_Block`) | hit event *can* occur if the other side is also Block |

### 1d. The decision rules (memorize)

From the Overview page, verbatim intent:

- **Block requires Block on BOTH sides.** "For two or more simulating objects to
  block each other, they both need to be set to block their respective object
  types." One-sided Block = pass-through.
- **One Block + one Overlap = an overlap occurs (no block).** "If one is set to
  overlap an object, and the second object is set to block the other, the overlap
  will occur but not the block."
- **Ignore on either side = nothing.** "If one object is set to ignore and the
  other is set to overlap, no overlap events will be fired."
- **Overlap with Generate Overlap Events OFF == Ignore.** "For all intents and
  purposes, Overlap and Ignore work exactly the same assuming Generate Overlap
  Events is disabled."

### 1e. The two extra checkboxes that gate events

- **Generate Overlap Events** — must be **ON on both** components for
  `OnComponentBeginOverlap`/`OnComponentEndOverlap` to fire. "For an overlap to
  occur, both Actors need to enable Generate Overlap Events. This is for
  performance." (Overlap_Overview.) This is the single most common silent failure.
- **Simulation Generates Hit Events** — must be ON (on at least the reporting
  body) for `OnComponentHit` to fire from a *blocking* physics contact.
  (`..._Physics_Bodies_Reference.md` → Collision section.) Separate from overlap.

### 1f. Collision Presets (named bundles)

Instead of hand-setting every channel, pick a preset (a row in
`..._Collision_Response_Reference.md`): `BlockAll`, `BlockAllDynamic`,
`OverlapAll`, `OverlapAllDynamic`, `Pawn`, `Spectator`, `CharacterMesh`,
`PhysicsActor`, `Destructible`, `Trigger`, `Ragdoll`, `Vehicle`, `UI`,
`InvisibleWall`, `NoCollision`, `Custom...`. `SetCollisionProfileName(TEXT("..."))`.

---

## 2. Setting collision in C++

```cpp
// Doc-sourced (UE 5.6/5.7). Concept grounding: section 1 above.

// --- A solid blocker (wall/floor) ---
Mesh->SetCollisionProfileName(TEXT("BlockAll"));   // or BlockAllDynamic if it moves

// --- A physics prop that reports its hits ---
Crate->SetCollisionProfileName(TEXT("PhysicsActor"));
Crate->SetNotifyRigidBodyCollision(true);          // == "Simulation Generates Hit Events"

// --- A trigger volume: query-only, overlaps Pawns, reports overlaps ---
Trigger->SetCollisionEnabled(ECollisionEnabled::QueryOnly);
Trigger->SetCollisionObjectType(ECC_WorldDynamic);
Trigger->SetCollisionResponseToAllChannels(ECR_Ignore);
Trigger->SetCollisionResponseToChannel(ECC_Pawn, ECR_Overlap);
Trigger->SetGenerateOverlapEvents(true);           // REQUIRED, on both sides
```

### 2a. Binding overlap / hit callbacks

```cpp
// In the constructor or BeginPlay:
Trigger->OnComponentBeginOverlap.AddDynamic(this, &AMyActor::HandleBeginOverlap);
Trigger->OnComponentEndOverlap.AddDynamic(this,   &AMyActor::HandleEndOverlap);
Crate->OnComponentHit.AddDynamic(this,            &AMyActor::HandleHit);
```

```cpp
// Handlers MUST be UFUNCTION() — AddDynamic binds by reflected name. Exact sigs:
UFUNCTION()
void AMyActor::HandleBeginOverlap(UPrimitiveComponent* OverlappedComp,
    AActor* OtherActor, UPrimitiveComponent* OtherComp,
    int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);

UFUNCTION()
void AMyActor::HandleEndOverlap(UPrimitiveComponent* OverlappedComp,
    AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex);

UFUNCTION()
void AMyActor::HandleHit(UPrimitiveComponent* HitComp, AActor* OtherActor,
    UPrimitiveComponent* OtherComp, FVector NormalImpulse, const FHitResult& Hit);
```

Forget the `UFUNCTION()` and `AddDynamic` fails (silently does nothing or errors
at compile). This is the second most common "my callback never fires."

---

## 3. Simple vs Complex collision

Source: `references/api/Gameplay_Systems_Physics_Collision_Simple_versus_Complex_Collision.md`.

- **Simple** = primitive proxies (boxes/spheres/capsules/convex hulls). Used for
  most queries and **required for simulation**.
- **Complex** = the per-poly trimesh. Used for precise complex queries.
- `Collision Complexity` on a static mesh: `Project Default`, `Simple And Complex`,
  `Use Simple Collision As Complex`, `Use Complex Collision As Simple`.
- **Gotcha:** with **Use Complex As Simple**, "you cannot simulate the object" —
  trimesh bodies can't be dynamic rigid bodies. If `SetSimulatePhysics(true)`
  does nothing on a mesh, check it has *simple* collision (a Body Setup with
  primitives — see `..._Physics_Bodies_Reference.md`, Body Setup).

---

## 4. Traces (raycasts & sweeps)

Source: `references/api/Gameplay_Systems_Physics_Traces_with_Raycasts_Traces_Overview.md`
and the four `..._Traces_Tutorials_Using_a_*_Line_Trace_*` pages.

### 4a. By Channel vs By Object

- **By Channel** — trace against a *trace channel* (`Visibility`, `Camera`, or a
  custom one). Each actor's trace response (Block/Overlap/Ignore) decides what's
  returned. Use for line-of-sight, shooting, ground checks.
- **By Object** — return only the specified **object types** (e.g. all Pawns).
  Great for "count everything of type X along this line."
- **Single** = first relevant hit. **Multi** = all overlaps up to and including
  the first Block (by channel) / all matches (by object).

### 4b. C++ idioms (canonical UE5 API)

```cpp
// Doc-sourced (UE 5.6/5.7). Concept: ..._Using_a_Single_Line_Trace_(Raycast)_by_Channel.md
FHitResult Hit;
FVector Start = Camera->GetComponentLocation();
FVector End   = Start + Camera->GetForwardVector() * 1500.f;

FCollisionQueryParams Params;
Params.AddIgnoredActor(this);                 // "trace through itself"
Params.bTraceComplex = false;                 // simple collision (faster)

bool bHit = GetWorld()->LineTraceSingleByChannel(Hit, Start, End, ECC_Visibility, Params);

// Multi by channel (everything up to first block):
TArray<FHitResult> Hits;
GetWorld()->LineTraceMultiByChannel(Hits, Start, End, ECC_Visibility, Params);

// By object type (e.g. all Pawns):
FCollisionObjectQueryParams ObjParams(ECC_Pawn);
GetWorld()->LineTraceSingleByObjectType(Hit, Start, End, ObjParams, Params);

// Shape sweep — a "vision cone" a crouched player can't duck under:
FCollisionShape Sphere = FCollisionShape::MakeSphere(40.f);
GetWorld()->SweepSingleByChannel(Hit, Start, End, FQuat::Identity,
                                 ECC_Visibility, Sphere, Params);
```

### 4c. FHitResult — what you get back

From the Traces Overview Hit Result table: `bBlockingHit`, `Time` (0–1, 1.0 = no
hit), `Distance`, `Location`, `ImpactPoint`, `Normal`, `ImpactNormal`,
`PhysMaterial`, `GetActor()`, `GetComponent()`, `BoneName`, `FaceIndex`,
`TraceStart`, `TraceEnd`. Always null-check `Hit.GetActor()` before use.

Visualize with `DrawDebugLine` / `DrawDebugSphere` (include `DrawDebugHelpers.h`).

---

## 5. Simulating physics (Chaos rigid bodies)

Source: `references/api/Gameplay_Systems_Physics_Physics_Bodies_Reference.md`
(Physics + Collision categories) and `..._Physics_Bodies.md`.

A **Physics Body / Body Instance** is the simplified proxy (box/sphere/capsule/
convex) the solver uses. Key properties (editor names ↔ effect):

| Property | Effect | C++ |
|----------|--------|-----|
| Physics Type | `Simulated` / `Kinematic` / `Default` | `SetSimulatePhysics(bool)` |
| Mass in KG | body mass | `SetMassOverrideInKg(NAME_None, kg, true)` |
| Linear Damping | drag on linear motion | `SetLinearDamping(f)` |
| Angular Damping | drag on rotation | `SetAngularDamping(f)` |
| Enable Gravity | gravity on/off | `SetEnableGravity(bool)` |
| Use CCD | continuous collision for fast objects | `SetUseCCD(true)` |
| Start Awake | begin simulating vs sleeping | (Body Instance) |

```cpp
// Doc-sourced (UE 5.6/5.7).
Mesh->SetSimulatePhysics(true);      // needs collision enabled (Physics Only / Collision Enabled)
Mesh->SetEnableGravity(true);

Mesh->AddForce(FVector(0,0,100000));         // accumulated force, applied each tick
Mesh->AddImpulse(FVector(0,0,50000));        // instant momentum change
Mesh->AddImpulse(Dir * 600.f, NAME_None, /*bVelChange=*/true);  // ignore mass
Mesh->AddTorqueInRadians(FVector(0,0,5000));
Mesh->SetPhysicsLinearVelocity(FVector(0,0,400));   // direct velocity (use sparingly)
```

### 5a. The cardinal sins

1. `SetSimulatePhysics(true)` with collision = `NoCollision`/`QueryOnly` → no
   rigid body (silent). Fix: `Collision Enabled` or `Physics Only`.
2. Mesh has only complex (trimesh) collision → can't simulate (§3). Fix: add
   simple collision.
3. Calling `SetWorldLocation(...)` every tick on a *simulated* body → you fight
   the solver: jitter, tunneling, dead contacts. **Drive it with forces/impulses.**
   Move *kinematic* bodies with `SetWorldLocation` instead.
4. Fast small object tunnels through thin walls → enable **CCD** (`SetUseCCD`).

### 5b. Constraints, physical materials, sub-stepping

- **Physics Constraints** (`UPhysicsConstraintComponent`) join two bodies (hinges,
  ragdoll joints, springs) — `references/api/..._Physics_Constraints*.md`.
- **Physical Materials** (`UPhysicalMaterial`: friction, restitution, density,
  surface type) drive bounce/slide and footstep surface logic —
  `references/api/..._Physical_Materials*.md`.
- **Physics Sub-Stepping** for stable fast/heavy sims — `..._Physics_Sub-Stepping.md`.
- **Networked Physics** for replicated sim → hand to
  `unreal-build-deploy-multiplayer`. (`..._Networked_Physics*.md`.)

---

## 6. Character movement (UCharacterMovementComponent)

Source: `references/api/Gameplay_Systems_Physics_Walkable_Slope.md` +
`..._Behavior_Tree_Quick_Start_Guide.md` (which tunes `Max Walk Speed`).

`ACharacter` ships with a capsule + a `UCharacterMovementComponent` (CMC). The
CMC is a *kinematic* mover: it walks floors, steps up stairs, climbs slopes, and
falls under gravity for you — you give it **intent**, not forces.

```cpp
// Doc-sourced (UE 5.6/5.7).
AddMovementInput(GetActorForwardVector(), AxisValue);   // feed intent each frame
UCharacterMovementComponent* CMC = GetCharacterMovement();
CMC->MaxWalkSpeed   = 500.f;        // run; the BT quick-start uses 120 patrol / 500 chase
CMC->JumpZVelocity  = 600.f;
CMC->GravityScale   = 1.f;
Jump();                              // ACharacter built-in (sets jumping flag)
```

- **Walkable Floor Angle** (~45° default) on the CMC sets the steepest climbable
  slope; steeper = the character slides.
- **Walkable Slope Override** on a physics body raises/lowers that *per-surface*
  ("no walking on the grass", or letting them climb a steep ramp) —
  `Increase`/`Decrease Walkable Slope` + angle. See the Walkable_Slope page.
- Query CMC state: `IsFalling()`, `IsMovingOnGround()`, `Velocity`.
- This same CMC is what the AI drives — the Behavior Tree just changes
  `MaxWalkSpeed` and issues `MoveTo`. Continued in
  `ai_behavior_trees_and_navigation.md`.

For non-Character physics movers (a rolling ball pawn, a vehicle), use the
simulated-body API in §5, or Chaos Vehicles (`references/api/..._Vehicles*.md`).
