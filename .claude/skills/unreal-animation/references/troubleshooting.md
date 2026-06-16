# Troubleshooting: Unreal animation (UE 5.6/5.7)

Grounded in the embedded pages under `references/api/`. Symptom → cause → fix.
Snippets are doc-sourced, not compile-tested here (no engine installed).

## Character is stuck in T-pose / A-pose (reference pose)

The Skeletal Mesh Component isn't running your AnimBP. Per
`...Animation_Blueprints.md`:
- **Animation Mode** must be **Use Animation Blueprint**.
- **Anim Class** must be set to your Animation Blueprint asset.

Set both on the mesh component (in the Character/Actor that owns it). If either is
missing the mesh renders its bind pose and nothing animates. In C++:
`Mesh->SetAnimationMode(EAnimationMode::AnimationBlueprint);`
`Mesh->SetAnimInstanceClass(MyAnimBPClass);`

## The locomotion animation never changes (always idle)

The AnimGraph isn't getting the variable. Check in order:
1. **Is the variable being set?** In your `UAnimInstance::NativeUpdateAnimation`,
   is `Speed` actually computed? `TryGetPawnOwner()` returns **null in the AnimBP
   preview window** and before possession — guard for it and re-acquire (see
   `scripts/new_anim_instance.sh`). A null owner means `Speed` stays 0.
2. **Does the transition rule read the right variable?** The state machine
   transition condition must reference the same variable name. A rule wired to a
   stale/duplicate variable compiles fine and silently never fires
   (`...State_Machines.md`, `...Transition_Rules.md`).
3. **Is there a transition rule at all?** A transition with no condition (or a rule
   that returns false) never triggers. Idle↔Run needs *two* one-directional
   transitions, each with its own rule.
4. **Blend Space axis input** — if you use a Blend Space instead of discrete
   states, confirm its axis pin is bound to `Speed` and the sample range covers your
   actual speed values (`...Blend_Spaces.md`).

## "Won't blend" / pops between walk and run

Use a **Blend Space 1D** driven by `Speed` (not two states with a hard transition),
or add an **Inertialization** node so blends smooth out
(`...Graphing_in_Animation_Blueprints.md` lists Inertial Blending as a pose
attribute). For state transitions, set a non-zero **blend duration** on the
transition.

## A montage does nothing (no visible animation)

From `...Editing_and_Using_Animation_Montage.md` + `...Animation_Slots.md`:
1. **No matching Slot node in the Anim Graph.** A montage plays into a **Slot**;
   if the Anim Graph has no `Slot 'DefaultSlot'` (or the slot your montage uses)
   node wired into the output, the montage evaluates but never reaches the Output
   Pose. Add the Slot node layered over your locomotion output.
2. **Wrong Skeleton.** The montage must target the same Skeleton as the mesh.
3. **Anim Mode not set** — same Use Animation Blueprint / Anim Class requirement as
   the T-pose case (the montage page repeats it explicitly).
4. **Called on the wrong object** — `PlayAnimMontage` is on the Character;
   `Montage_Play` is on the mesh's `UAnimInstance` (`GetMesh()->GetAnimInstance()`).
   Calling it on a null mesh/anim instance silently no-ops.

## `TryGetPawnOwner()` returns null

Expected in the **AnimBP preview viewport** (there's no pawn) and during the brief
window before the AnimBP's pawn is possessed/initialized. Always null-check and
re-acquire in `NativeUpdateAnimation` rather than assuming
`NativeInitializeAnimation` captured it. Don't dereference it unguarded.

## Feet slide on the ground / clip through the floor

- **Sliding while moving:** your locomotion is *not* root-motion-driven but the
  clip expects to move the character, or vice-versa. Decide one model: either
  root motion drives movement (enable it on the asset **and** set Root Motion Mode
  on the AnimBP — `...Root_Motion.md`) or the movement component drives it and the
  clip plays in place.
- **Feet not planted / clipping:** add **foot IK** via an IK Rig in the Anim Graph,
  or use the **IK Retargeter** foot-sliding fix
  (`...Fix_Foot_Sliding_with_IK_Retargeter.md`,
  `...IK_Rig_in_Animation_Blueprints.md`).

## Retargeted animation looks broken (limbs twisted, wrong scale)

`...IK_Rig_Retargeting.md`, `...Retargeting_Bipeds_with_IK_Rig.md`:
- Source and target **reference poses must match** (both T-pose or both A-pose) in
  their IK Rigs, or the retarget bakes in an offset.
- The **chain mapping** in the IK Retargeter must pair the right source/target bone
  chains (spine→spine, left-arm→left-arm).
- For different proportions, that's the point of IK retargeting — but check the IK
  goals/solvers, not just FK chain mapping.

## AnimGraph compiler warning: "not thread safe"

The Anim Graph runs on a Worker Thread (`...Graphing_in_Animation_Blueprints.md`).
Unsafe operations there trigger warnings. Safe operations are: most AnimGraph
nodes, direct member-variable access on the AnimBP, and pure Blueprint functions
that don't modify state. Fix by:
- Reading external data via **Property Access** (`...Property_Access.md`) instead of
  casting to another blueprint inside the graph.
- Moving computation into **Blueprint Thread Safe Update Animation** /
  `NativeThreadSafeUpdateAnimation` (`...Animation_Optimization.md`).
- Marking AnimBP-feeding variables `BlueprintReadOnly` and *pulling* owner data
  rather than letting other objects *push* into the AnimBP.

## Animation hitches / frame drops with many characters

`...Animation_Optimization.md`:
- "the most performance-expensive operation of an Animation Blueprint is the Event
  Graph logic" — keep the Event Graph minimal; move work to **Thread Safe**
  functions on the Worker Thread.
- Enable **Animation Fast Path** (it copies member variables instead of running the
  Blueprint VM for AnimGraph variable access).
- Beware root motion: "Root Motion from everything" / "from Montages" forces the
  Anim Graph onto the **Game Thread**, removing parallelism (`...Root_Motion.md`).
- For crowds, look at the Animation Budget Allocator
  (`...Animation_Budget_Allocator.md`).

## A notify/footstep event isn't firing

`...Animation_Notifies.md`: the notify must be placed on the right frame of the
**Sequence or Montage** actually playing, and (for skeleton notifies) handled by an
**AnimNotify** event in the AnimBP Event Graph, or via the Play Montage **On Notify
Begin/End** pins. If using notify functions in state-machine transition rules,
enable **Create Notify Meta Data** on the State Machine or "none of the notify
functions will work" (`...State_Machines.md`).

## C++: `UMyAnimInstance.generated.h` / GENERATED_BODY errors

This is the standard UE reflection setup, not animation-specific — the header needs
`#include "MyAnimInstance.generated.h"` as the **last** include and a
`GENERATED_BODY()` inside the `UCLASS`. See `unreal-gameplay-cpp` for the reflection
macro rules and `unreal-project-setup` for module/build wiring.

## Build / verify

No engine is installed here, so none of this was compile-tested. To verify against
a real engine:
```bash
export UE_ROOT=/path/to/UnrealEngine        # dir containing Engine/
scripts/unreal.sh build <Target> Linux Development -Project=/abs/MyGame.uproject
```
`scripts/unreal.sh` exits 127 with install guidance when no UE is found.
