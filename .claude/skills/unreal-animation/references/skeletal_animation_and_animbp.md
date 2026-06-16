# Skeletal animation & the Animation Blueprint (UE 5.6/5.7)

Synthesis guide grounding the SKILL.md claims in the embedded pages under
`references/api/`. This is the *base layer* of animation: the AnimBP, its state
machine, blend spaces, and how C++ feeds it. Montages, Control Rig, IK, and
Sequencer are in `montages_controlrig_sequencer.md`.

> Honesty note: the embedded docs document the AnimBP **concepts** and the
> **Blueprint nodes**. The C++ forms (`UAnimInstance`, `NativeUpdateAnimation`,
> `NativeThreadSafeUpdateAnimation`, `Montage_Play`) are the standard engine API
> those nodes map to — they are documented in the engine headers/API reference,
> not in these page exports. Where a snippet uses a C++ name, it is the
> well-known engine equivalent of the documented Blueprint node; verify against a
> real UE 5.7 build. Snippets are not compile-tested here (no engine installed).

## 1. The asset chain

Source: `...Animation_Assets_and_Features_Skeletons.md`,
`...Animation_Blueprints.md`.

- **Skeleton** — a hierarchy of **Bones** (joints). "In Unreal Engine, Skeletons
  are used to store and associate animation data, the overall skeletal hierarchy,
  and Animation Sequences." Skeletons can be shared so animations transfer between
  meshes. **Slots** (for montages) are stored on the Skeleton.
- **Skeletal Mesh** — the skinned geometry. Created primarily by importing a
  skinned FBX: "leaving the **Skeleton** field empty will automatically create a
  Skeleton Asset based on the skinned character being imported."
- **Animation Sequence** — one recorded clip authored against a Skeleton.
- **Skeletal Mesh Component** — the component on your Actor that renders +
  animates the mesh. To make an AnimBP drive it (`...Animation_Blueprints.md`):
  > Set **Animation Mode** to **Use Animation Blueprint**.
  > Set **Anim Class** to your Animation Blueprint asset.
  If you forget this, the mesh sits in its reference pose (T-pose / A-pose).

## 2. The AnimBP has two graphs — and they run on different threads

Source: `...Graphing_in_Animation_Blueprints.md`.

| Graph | Job | Thread |
| --- | --- | --- |
| **Event Graph** | Compute and set the variables the pose logic needs (push state in). | **Game Thread** — "Every Animation Blueprint has a single EventGraph … The most common use of the EventGraph is to update values or properties used by AnimGraph nodes." |
| **Anim Graph** | Produce the final **Output Pose** by blending clips, running the state machine, applying skeletal controls. | **Worker Thread** — "By default, the AnimGraph executes on a separate CPU thread from the EventGraph, which is referred to as the 'Worker Thread'." |

The Anim Graph is **not event-driven**: "it is not event-based and is evaluated
each frame." It continuously *pulls* a pose from whatever the variables currently
say. That is why you set variables rather than "calling" an animation.

### Event Graph events (and their C++ overrides)

From `...Graphing_in_Animation_Blueprints.md` and
`...Animation_Blueprint_Event_Nodes.md`:

| Blueprint event node | When | C++ override on `UAnimInstance` |
| --- | --- | --- |
| **Initialize Animation** | once, when the AnimBP instance is created | `NativeInitializeAnimation()` |
| **Update Animation** | every frame — "the entry point into the update loop"; `DeltaTimeX` pin gives elapsed time | `NativeUpdateAnimation(float DeltaSeconds)` |
| **Post Evaluate Animation** | every frame, *after* the pose is applied | `NativePostEvaluateAnimation()` |
| **Blueprint Thread Safe Update Animation** | every frame, on the **Worker Thread** (the perf-preferred update) | `NativeThreadSafeUpdateAnimation(float DeltaSeconds)` |

The doc explicitly recommends moving work off the Update event:
> The Event Graph Update Animation event always runs on the game thread, so it
> cannot take advantage of multithreading to improve overall framerate.

## 3. State machines

Source: `...State_Machines.md`, `...Transition_Rules.md`.

A **State Machine** lives inside the Anim Graph and is the standard locomotion
brain: "this type of system is used to correlate animations to movement states on
your characters, such as idling, walking, running, and jumping."

- Built by right-clicking the Anim Graph → **State Machines > Add New State
  Machine** → connect to **Output Pose**.
- **Entry** point defines the default state (usually idle).
- A **State** contains its own mini Anim Graph ending in an **Output Pose**; only
  the active state's logic executes.
- **Transitions** are single-direction links with a **transition rule** (a boolean
  expression). Idle↔Run needs *two* transitions. The rule is where you test your
  AnimInstance variables (`Speed > 10`, `bIsInAir`).
- **Conduits** = shared 1-to-many / many-to-1 transitions. **State Aliases** =
  shortcut nodes to consolidate transitions and de-clutter. **Global Alias** is
  best for "single-frame input and finite-duration states, such as interaction,
  attacks."
- Per-state **Always Reset on Entry** controls whether the state restarts its
  animation or "picks up where it left off."
- State Machine **Max Transitions Per Frame = 1** prevents competing transitions
  firing in the same tick.

## 4. Blend Spaces

Source: `...Blend_Spaces.md`, `...Blend_Spaces_in_Animation_Blueprints.md`,
`...Aim_Offset.md`.

> Blend Spaces are assets that allow multiple animations or poses to be blended by
> plotting them onto either a one or two-dimensional graph … the blending can be
> controlled by gameplay input or other variables.

Types (Content Browser → Add → Animation):
- **Blend Space 1D** — one axis (e.g. Speed → idle/walk/run).
- **Blend Space** (2D) — two axes (e.g. forward speed × strafe → directional move).
- **Aim Offset / Aim Offset 1D** — *additive* pose blends layered on top of a base
  pose (e.g. look/aim up-down-left-right).

You drop a Blend Space node in the Anim Graph and feed its axis input(s) from your
AnimInstance variable(s). The blend space — not your code — picks the clip mix.
This is the canonical answer to "blend walk into run": one Blend Space 1D driven by
`Speed`.

## 5. Driving it from C++: the UAnimInstance subclass

The AnimBP's **Parent Class** is a `UAnimInstance`. Authoring your own subclass is
the documented performance path (`...Animation_Node_Technical_Guide.md`):

> You can create your own `UAnimInstance` derived class to achieve performance
> improvements.

You can also add **native getters** (UFUNCTION + BlueprintPure + `meta=(AnimGetter="True")`)
for the state machine, per the same page's "Derived Native Getters" section, and
helper functions exist on `UAnimInstance` — `GetStateMachineInstance(int32)`,
`GetRelevantAssetPlayerFromState(...)`, etc.

The pattern (see `scripts/new_anim_instance.sh` for the full scaffold):

```cpp
UCLASS()
class MYGAME_API UMyCharAnimInstance : public UAnimInstance
{
    GENERATED_BODY()
public:
    virtual void NativeInitializeAnimation() override;
    virtual void NativeUpdateAnimation(float DeltaSeconds) override;

    UPROPERTY(BlueprintReadOnly, Category = "Animation") float Speed = 0.f;
    UPROPERTY(BlueprintReadOnly, Category = "Animation") float Direction = 0.f;
    UPROPERTY(BlueprintReadOnly, Category = "Animation") bool  bIsInAir = false;
};
```

```cpp
void UMyCharAnimInstance::NativeUpdateAnimation(float DeltaSeconds)
{
    Super::NativeUpdateAnimation(DeltaSeconds);
    APawn* Pawn = TryGetPawnOwner();          // null in the AnimBP preview
    if (!Pawn) return;

    const FVector V = Pawn->GetVelocity();
    Speed = V.Size2D();
    Direction = CalculateDirection(V, Pawn->GetActorRotation()); // UAnimInstance helper
    if (const UPawnMovementComponent* M = Pawn->GetMovementComponent())
        bIsInAir = M->IsFalling();
}
```

`BlueprintReadOnly` is deliberate: the variables are *written* in C++ and *read* by
the AnimGraph. Marking them `BlueprintReadWrite` invites other blueprints to push
into them — which violates the thread-safety rule below.

## 6. Thread safety — pull, don't push

Source: `...Animation_Optimization.md`, `...Property_Access.md`.

Because the Anim Graph runs on a Worker Thread in parallel with gameplay, you must
not have other objects writing into the AnimBP mid-evaluation. The rule:

> all references to data derived from other blueprints and components within your
> project, such as variables, must be called by your Animation Blueprint, rather
> than pushed to it.

Two mechanisms:
- **Property Access** — the AnimBP reads owner data (velocity, location) directly,
  thread-safely, without casting. "you can use Property Access to directly access
  the character's Velocity without the need to cast to the character blueprint."
  Its **Call Site** can be Automatic / Thread Safe / Game Thread / Worker Thread.
- **Blueprint Thread Safe Update Animation** / `NativeThreadSafeUpdateAnimation` —
  do your per-frame computation here so it runs on the Worker Thread.

The compiler warns on unsafe AnimGraph operations. Safe ones include "Directly
accessing member variables of your Animation Blueprint" and "Calling Blueprint pure
functions that don't modify state." **Animation Fast Path** further optimizes pure
member-variable access in the AnimGraph by copying values instead of running the
Blueprint VM.

You *can* disable multithreading (Class Settings → **Use Multi Threaded Animation
Update** off) but the docs do not recommend it.

## 7. Slots (the seam montages plug into)

Source: `...Animation_Slots.md`.

A **Slot** node is "a place in the Anim Graph to insert animations" — the layer a
montage plays through, on top of the base state machine output. Slots are stored on
the **Skeleton** (default: `DefaultSlot`). Common setups:
- A **full-body Slot** after the locomotion state machine (emotes, interactions).
- An **upper-body Slot** + a **Layered blend per bone** node so only the upper body
  is affected (reload/shoot while running).

If your montage's slot has **no matching Slot node in the Anim Graph**, the montage
plays but you see nothing — a frequent "my montage does nothing."

## 8. Animation Sequences, Notifies, Curves

Source: `...Animation_Sequences.md`, `...Animation_Notifies.md`,
`...Animation_Curves.md`.

- **Notifies** fire events at a frame of a clip/montage (footstep sound, spawn VFX,
  enable hit window). In the AnimBP Event Graph they arrive as **AnimNotify**
  events; on a Play Montage they arrive on the **On Notify Begin/End** pins.
- **Curves** carry per-frame float data along a clip (e.g. a "DisableFootIK"
  curve) that the Anim Graph can read.

These are how animation communicates *back* to gameplay/audio/VFX. Spawning a
Niagara effect from a notify → `unreal-niagara-vfx`; a sound from a notify →
`unreal-audio`.
