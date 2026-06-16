---
name: unreal-animation
description: >
  Animate skeletal characters in an Unreal Engine 5.6/5.7 C++ game — the
  Animation Blueprint, state machines, blend spaces, montages, and driving it all
  from C++. Use this whenever you are setting up character animation (Skeleton,
  Skeletal Mesh, Skeletal Mesh Component, Anim Class), building or editing an
  Animation Blueprint (AnimBP: the Event Graph + the Anim Graph), creating a
  locomotion state machine (idle/walk/run/jump states + transition rules), wiring
  a Blend Space (1D/2D idle<->walk<->run, Aim Offset), playing one-shot actions
  with Animation Montages and Slots (attacks, reloads, hit reactions), or driving
  animation from gameplay C++ — a UAnimInstance subclass that sets
  BlueprintReadOnly variables in NativeUpdateAnimation, plus Montage_Play /
  PlayAnimMontage for montages. Also covers Control Rig (procedural rigging / IK),
  IK Rig + IK Retargeter (sharing animation between skeletons of different
  proportions, foot IK, runtime retargeting), the Sequencer (cinematics, animating
  a character on a track), root motion (driving movement from the animation), and
  Paper2D flipbook animation for 2D. Reach for it any time the task is "play the
  run animation", "blend walk into run", "make the character idle/walk/run",
  "play an attack montage", "the character is stuck in T-pose / A-pose", "the
  animation won't play / won't blend", "drive animation from C++", "set Speed on
  the anim instance", "retarget this animation onto another character", "the feet
  slide / clip the floor", "play a cutscene", "use root motion", or "animate a 2D
  sprite". Covers Animator, Technical Artist, and 3D Modeler integration work, and
  the Gameplay Programmer's "drive the AnimBP from code" side. Assumes a buildable
  project (unreal-project-setup) and basic actor/component C++ (unreal-gameplay-cpp).
---

# Unreal Animation (skeletal mesh animation system)

The poses come from elsewhere (Maya, Blender, Mixamo, MetaHuman, Meshy). This
skill is the bridge into UE 5.6/5.7: the **Animation Blueprint** (AnimBP) that
chooses and blends those poses each frame, and the **C++** that drives it. Whether
the art "fits" the game is the design call (`applying-game-aesthetics`); this skill
is the mechanical integration. C++-primary; the docs are Blueprint-heavy here, so
where a doc shows a Blueprint node we lead with the C++ equivalent and name the node.

## The one thing that trips everyone up: you don't play clips — you set variables the graph reads

The classic trap is reaching into gameplay C++ to "play the walk clip" or set a
bone pose. **You don't.** The flow is:

1. Gameplay C++ sets **variables on the AnimInstance** (the AnimBP's C++ object) —
   `Speed`, `Direction`, `bIsInAir`.
2. The **Anim Graph** (a state machine + blend spaces inside the AnimBP) **reads
   those variables** every frame and decides which pose to produce.

The AnimGraph is *not* event-driven; per `references/api/...Graphing_in_Animation_Blueprints.md`:

> The AnimGraph is different in that it displays the flow of execution at all
> times since it is not event-based and is evaluated each frame.

So you push state in; the graph pulls a pose out. The per-frame entry point where
you push that state is the **Update Animation** event — in C++,
`NativeUpdateAnimation(float DeltaSeconds)`. The doc describes the node:

> **Update Animation** … Executes every frame, allowing the Animation Blueprint to
> perform calculations and updates to any values it needs. This event is the entry
> point into the update loop of the EventGraph.

**The one exception is Montages.** One-shot actions (attack, reload, hit reaction)
are *not* states you blend into via variables — you fire them imperatively with
`Montage_Play` / `PlayAnimMontage`, and they play through a **Slot** node layered
over the base state machine. Per `references/api/...Editing_and_Using_Animation_Montage.md`:

> You can use the **Play Anim Montage** node to playback an Animation Montage. …
> For a more powerful and feature rich node, you can use the **Play Montage** node.

Mixing these up — trying to "play a walk clip directly" instead of feeding `Speed`
to a blend space, or trying to push a one-shot attack through a variable instead of
a montage — is the #1 source of "my animation won't play / is stuck in T-pose".

## The skeletal animation stack

| Layer | What it is | Doc |
| --- | --- | --- |
| **Skeleton** | Bone hierarchy; stores/associates animation data and **Slots**. Shared across meshes that use it. | `...Skeletons.md` |
| **Skeletal Mesh** | The skinned geometry bound to a Skeleton. Imported from FBX (leave Skeleton empty to auto-create one). | `...Skeletons.md` |
| **Skeletal Mesh Component** | The component on your Actor that renders + animates the mesh. Set **Animation Mode = Use Animation Blueprint** and **Anim Class = your AnimBP**. | `...Animation_Blueprints.md` |
| **Animation Sequence** | A single recorded clip on a Skeleton. | `...Animation_Sequences.md` |
| **Animation Blueprint (AnimBP)** | The brain. Two graphs: **Event Graph** (push variables, on the Game Thread) + **Anim Graph** (produce the pose, on a Worker Thread). | `...Animation_Blueprints.md`, `...Graphing_in_Animation_Blueprints.md` |
| **State Machine** | Inside the Anim Graph: idle/walk/run/jump **states** + **transition rules** that test your variables. | `...State_Machines.md` |
| **Blend Space** | Plots clips on a 1D/2D graph; blends them by an axis value (e.g. `Speed`). Aim Offset is a pose-additive blend space. | `...Blend_Spaces.md` |
| **Montage + Slot** | One-shot, imperatively triggered clips, played into a **Slot** node layered over the locomotion output. | `...Animation_Montage.md`, `...Animation_Slots.md` |

Detail and grounding for every row: `references/skeletal_animation_and_animbp.md`.

## Driving animation from C++ (the idiomatic path)

You author a `UAnimInstance` subclass and set it as the AnimBP's **Parent Class**
(the AnimBP's Anim Graph then binds to its variables). The docs confirm this is the
performance path — `references/api/...Animation_Node_Technical_Guide.md`:

> You can create your own `UAnimInstance` derived class to achieve performance
> improvements.

`NativeUpdateAnimation` is the C++ mirror of the Update Animation event node above.
Snippet (idiom assembled from the embedded docs — the `UAnimInstance` parent class,
the BlueprintReadOnly variables the AnimGraph reads, and the per-frame Update entry
point; see honesty note below):

```cpp
// MyCharAnimInstance.h
#pragma once
#include "CoreMinimal.h"
#include "Animation/AnimInstance.h"
#include "MyCharAnimInstance.generated.h"

UCLASS()
class MYGAME_API UMyCharAnimInstance : public UAnimInstance
{
    GENERATED_BODY()
public:
    virtual void NativeInitializeAnimation() override;
    virtual void NativeUpdateAnimation(float DeltaSeconds) override;

    // The Anim Graph's state machine + blend space read THESE.
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    float Speed = 0.f;
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    bool  bIsInAir = false;

protected:
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    TObjectPtr<class APawn> OwningPawn = nullptr;
};
```

```cpp
// MyCharAnimInstance.cpp
#include "MyCharAnimInstance.h"
#include "GameFramework/Pawn.h"
#include "GameFramework/PawnMovementComponent.h"

void UMyCharAnimInstance::NativeInitializeAnimation()
{
    Super::NativeInitializeAnimation();
    OwningPawn = TryGetPawnOwner();      // the pawn this AnimBP animates (or null in preview)
}

void UMyCharAnimInstance::NativeUpdateAnimation(float DeltaSeconds)
{
    Super::NativeUpdateAnimation(DeltaSeconds);
    if (!OwningPawn) { OwningPawn = TryGetPawnOwner(); if (!OwningPawn) return; }

    Speed = OwningPawn->GetVelocity().Size2D();      // feeds the blend space
    if (const UPawnMovementComponent* M = OwningPawn->GetMovementComponent())
        bIsInAir = M->IsFalling();                   // a transition rule tests this
}
```

`scripts/new_anim_instance.sh <UMyClass> [Module] [dir]` scaffolds exactly this
(.h + .cpp, Speed/Direction/bIsInAir/bIsAccelerating, smoke-tested: generates the
files, rejects invalid identifiers, warns on the missing `U` prefix). **You never
touch bones here** — you set variables; the graph does the rest.

### Montages for one-shots (the imperative exception)

A montage layers a one-shot clip over the locomotion via a **Slot** node. From
gameplay code you trigger it on the mesh's anim instance:

- `UAnimInstance::Montage_Play(UAnimMontage*, float InPlayRate)` — the C++ form of
  the **Play Montage** node documented in `...Editing_and_Using_Animation_Montage.md`.
- `ACharacter::PlayAnimMontage(UAnimMontage*, float InPlayRate, FName StartSection)`
  — the convenience form of the **Play Anim Montage** node (Target defaults to Self).
- `Montage_Stop`, `Montage_JumpToSection`, `Montage_IsPlaying` for control;
  montage end/blend-out/interrupt events drive follow-up logic (the **On Completed
  / On Blend Out / On Interrupted** output pins in the docs).

The full mapping (Blueprint node ↔ C++ function), Slot setup, montage **Sections**,
and notifies are in `references/montages_controlrig_sequencer.md`.

## The Game Thread / Worker Thread split (why thread-safety matters)

The Event Graph runs on the **Game Thread**; the **Anim Graph runs on a Worker
Thread** in parallel (`...Graphing_in_Animation_Blueprints.md`). To push gameplay
data into the graph safely the rule is *pull, don't push*: the AnimBP reads owner
data via **Property Access** rather than other blueprints writing into it. Per
`...Animation_Optimization.md`:

> all references to data derived from other blueprints and components within your
> project, such as variables, must be called by your Animation Blueprint, rather
> than pushed to it.

In C++ the thread-safe counterpart of `NativeUpdateAnimation` is
`NativeThreadSafeUpdateAnimation` (mirrors the **Blueprint Thread Safe Update
Animation** override). One gotcha worth knowing: enabling **Root Motion from
everything / from Montages** forces the Anim Graph back onto the Game Thread
(`...Root_Motion.md`) — a real perf cost. Threading detail:
`references/skeletal_animation_and_animbp.md`.

## Control Rig, IK Rig + Retargeting, Sequencer, root motion

- **Control Rig** — procedural rigging/IK *in-engine* (no external DCC); also used
  to animate in Sequencer and as a node inside an Anim Graph. Intro: `...Control_Rig.md`.
- **IK Rig + IK Retargeter** — share one character's animation onto another of
  different proportions (offline or **at runtime**), and solve foot IK so feet stop
  sliding/clipping. `...IK_Rig.md`, and the workflow pages (Retargeting Bipeds,
  Fix Foot Sliding, Runtime IK Retargeting).
- **Sequencer** — the non-linear cinematic editor: animate a character on an
  **Animation Track**, drive cameras, render. `...Cinematics_and_Sequencer.md`.
- **Root Motion** — drive the character's *movement* from the animation's root bone
  (must enable per-Sequence/Montage **and** pick a Root Motion Mode on the AnimBP
  Class Defaults). `...Root_Motion.md`.

Pointers and the C++/Sequencer touchpoints: `references/montages_controlrig_sequencer.md`.

## Paper2D (2D animation)

For 2D, skeletal animation is replaced by **Flipbooks** (sprite sequences) and a
sprite-based animation **state machine**. See
`references/api/...Paper_2D_-_How_To_Setting_up_an_Animation_State_Machine.md` and
`...Paper_2D_Flipbooks.md`. Sprite *import* lives in the rendering side; this skill
covers the flipbook animation state machine.

## Troubleshooting

`references/troubleshooting.md` covers: stuck in T-pose / A-pose (Animation Mode or
Anim Class not set), animation won't play (`Speed` never set, wrong variable name in
a transition rule, no transition condition), montage does nothing (no Slot node in
the Anim Graph for that slot, wrong skeleton), `TryGetPawnOwner()` null in preview,
feet sliding/clipping (root motion vs blend mismatch, missing foot IK / retarget),
retarget T-pose wrong (IK Rig source/target pose), AnimGraph thread-safety compiler
warnings, and the root-motion-forces-Game-Thread perf hit.

## What this covers / hands off to

- **Covers:** Animator, Technical Artist, and 3D Modeler integration of skeletal
  animation, plus the Gameplay Programmer's "drive the AnimBP from C++" work.
- **Aesthetic / art-direction calls →** `applying-game-aesthetics` (design).
- **The gameplay logic that calls `Montage_Play` / sets anim variables →** `unreal-gameplay-cpp`.
- **Movement/collision that produces the velocity feeding `Speed`/`bIsInAir` →** `unreal-physics-and-ai`.
- **Skeletal-mesh materials, hair/groom, deformer/material visuals →** `unreal-rendering-materials`.
- **Particle/Niagara effects spawned from anim notifies →** `unreal-niagara-vfx`.
- **Visual-scripting the AnimBP graphs by hand →** `unreal-blueprints`.
- **Project scaffold / module / `.Build.cs` / `.gitignore` →** `unreal-project-setup`.
- **Packaging / replicating montages over the network →** `unreal-build-deploy-multiplayer`.

UE 5.6/5.7. Snippets are **doc-sourced from the embedded UE 5.6/5.7 documentation
(`references/api/`), not compile-tested in this environment (no engine installed)**.
The embedded pages document the AnimBP concepts and Blueprint nodes; the C++ forms
(`NativeUpdateAnimation`, `Montage_Play`, `UAnimInstance`) are the standard engine
API those nodes map to — verify against a real build via `scripts/unreal.sh build`
(needs an installed UE 5.7 and `$UE_ROOT`).
