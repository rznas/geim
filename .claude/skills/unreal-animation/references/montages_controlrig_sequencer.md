# Montages, Control Rig, IK Retargeting, Sequencer, Root Motion, Paper2D

Companion to `skeletal_animation_and_animbp.md`. Covers the imperative montage
path (the exception to "set variables, don't play clips") and the bigger systems
that layer on top of the base AnimBP.

> Honesty note: as in the companion guide, the embedded pages document concepts +
> Blueprint nodes. C++ forms (`Montage_Play`, `PlayAnimMontage`, etc.) are the
> standard engine API the documented nodes map to. Not compile-tested here.

## 1. Animation Montages — the one-shot, imperative path

Source: `...Animation_Montage.md`, `...Editing_and_Using_Animation_Montage.md`,
`...Animation_Slots.md`.

A **Montage** combines one or more Animation Sequences into an asset whose playback
you control imperatively. Use montages for **one-shot, gameplay-triggered actions**:
attacks, reloads, hit reactions, emotes, interactions — things you do *not* want to
express as a blended locomotion state.

> You can use **Animation Montages** to combine several Animation Sequences into a
> single asset and control playback with Blueprints.

Key structure:
- **Sections** — named regions you can jump between or chain ("Default" plays the
  whole montage; you can branch combo sections at runtime).
- **Slots / Slot Groups** — which part of the body the montage plays on. A montage
  plays through the matching **Slot node** in the Anim Graph (see companion §7).
  Different Slot Groups (upper/lower body) let two montages play simultaneously.
- **Blend In / Blend Out / Blend Out Trigger Time** — how the montage eases in and
  out over the base pose. **Enable Auto Blend Out** off = the final pose holds
  until something stops it.

### Playing a montage — Blueprint node ↔ C++ function

The docs show two Blueprint nodes; here are their standard C++ equivalents:

| Doc Blueprint node | C++ |
| --- | --- |
| **Play Anim Montage** (Target = Self by default, takes In Play Rate, start section) | `float ACharacter::PlayAnimMontage(UAnimMontage* Montage, float InPlayRate = 1.f, FName StartSection = NAME_None)` |
| **Play Montage** (connect the Mesh + Montage; rich output pins) | `float UAnimInstance::Montage_Play(UAnimMontage* Montage, float InPlayRate = 1.f, ...)` |

Typical gameplay call (from a Character; verify against your UE build):

```cpp
// In gameplay C++ (NOT in the AnimInstance — this is the imperative exception).
// AttackMontage is a UPROPERTY(EditAnywhere) UAnimMontage* set in the editor.
void AMyCharacter::Attack()
{
    if (AttackMontage)
    {
        // Convenience form on ACharacter; routes to the mesh's anim instance.
        PlayAnimMontage(AttackMontage, 1.0f, TEXT("Combo1"));
    }
}
```

Or via the mesh's anim instance directly (the **Play Montage** form), which exposes
finer control:

```cpp
if (UAnimInstance* Anim = GetMesh()->GetAnimInstance())
{
    Anim->Montage_Play(AttackMontage, 1.0f);
    Anim->Montage_JumpToSection(TEXT("Combo2"), AttackMontage); // chain a combo
}
```

Control + query functions on `UAnimInstance`: `Montage_Stop`, `Montage_Pause`,
`Montage_Resume`, `Montage_SetPlayRate`, `Montage_JumpToSection`,
`Montage_IsPlaying`, `Montage_GetIsStopped`. End/branch logic uses the montage's
**On Completed / On Blend Out / On Interrupted / On Notify Begin / On Notify End**
events (the output pins documented on the Play Montage node), or
`Montage_SetEndDelegate` / `Montage_SetBlendingOutDelegate` in C++.

### Montages over the network

Montages can replicate root motion in network games, but: "you first need to
replicate the PlayMontage Node manually with a RPC." Server-authoritative montage
play → `unreal-build-deploy-multiplayer`.

## 2. Control Rig — procedural rigging / IK in-engine

Source: `...Control_Rig.md`, `...Control_Rig_in_Animation_Blueprints.md`,
`...Full-Body_IK.md`.

> Using Control Rig, you can bypass the need to rig and animate in external tools,
> and instead animate in Unreal Editor directly.

Three ways it shows up:
- **Rigging** — build controls/IK on a character (Full-Body IK, FK rig, spline
  rigging) without an external DCC.
- **Animating in Sequencer** — pose the controls on a cinematic track.
- **As a node in the Anim Graph** — `...Control_Rig_in_Animation_Blueprints.md`
  covers running a Control Rig at runtime inside the AnimBP for procedural
  adjustments (foot placement, look-at, secondary motion).

Control Rig graphs are authored in the editor; from C++ you generally drive them
indirectly (set the AnimBP variables the Control Rig node reads, same model as the
rest of the Anim Graph).

## 3. IK Rig + IK Retargeter — share animation across skeletons; foot IK

Source: `...IK_Rig.md`, `...IK_Rig_in_Animation_Blueprints.md`,
`...IK_Rig_Retargeting.md`, and the workflow pages
(`...Retargeting_Bipeds_with_IK_Rig.md`, `...Fix_Foot_Sliding_with_IK_Retargeter.md`,
`...Runtime_IK_Retargeting.md`, `...Using_Retargeted_Animations.md`).

> The **IK Rig** system provides a method of interactively creating **Solvers**
> that perform pose editing for your skeletal meshes. … the **IK Retargeting**
> system can be used to transfer animations between characters of varying
> proportions, either at runtime or for offline creation of new animation sequences.

Two jobs:
- **Procedural pose editing** (IK Rig in the Anim Graph) — solve feet to the
  ground, hands to a weapon, look-at. This is the doc-sanctioned fix for
  feet sliding / clipping the floor (`...Fix_Foot_Sliding_with_IK_Retargeter.md`).
- **Retargeting** — play one character's animation library on another with
  different proportions. Offline (bake new sequences) or **runtime** (the
  **Retarget Pose From Mesh** AnimGraph node — `...Runtime_IK_Retargeting.md`).
  You set up an **IK Rig** for source + target, then an **IK Retargeter** mapping
  the chains. Note the *older* Skeleton-based retargeting (Retarget Manager /
  `...Animation_Retargeting.md`) still exists; IK Rig is the current path.

Getting the **source/target reference pose** right (both in a matching T-pose or
A-pose) is the usual fix for "the retargeted animation looks broken."

## 4. Sequencer — cinematics

Source: `...Cinematics_and_Sequencer.md`, `...Sequencer_Basics_Apply_Animation_to_a_Character.md`,
`...Sequencer_Overview_Tracks_Animation_Track.md`,
`...Controlling_Anim_Instances_with_Sequencer.md`,
`...Blending_Animation_Blueprints_with_Sequencer.md`.

> At the core of these workflows is **Sequencer**, a powerful non-linear editing
> suite.

For animation specifically:
- Add a Skeletal Mesh actor to a Level Sequence; add an **Animation Track** and key
  in Animation Sequences to play scripted character animation.
- Sequencer can **possess** a runtime actor and even **blend the AnimBP** with the
  authored take, or **control the Anim Instance** from the sequence.
- A Level Sequence is played from gameplay via a `ULevelSequencePlayer` /
  `ALevelSequenceActor` (engine API; trigger from gameplay C++ → `unreal-gameplay-cpp`).

Use Sequencer for cutscenes and scripted moments; use the AnimBP for live,
input-driven character animation.

## 5. Root Motion — drive movement from the animation

Source: `...Locomotion_Root_Motion.md`.

> With Root Motion animations, you can drive character movement with animation data
> to create more grounded movement within levels.

Two switches, both required:
1. **Per Sequence/Montage:** enable **Enable Root Motion** in the asset's details.
2. **On the AnimBP (Class Defaults → Root Motion Mode):** choose how it's extracted:
   - **No Root Motion Extraction** — leave it on the root bone.
   - **Ignore Root Motion** — extract but don't apply.
   - **Root Motion from everything** — every contributing root-motion asset.
   - **Root Motion from Montages Only** — common for attacks/dodges.

Perf caveat (also flagged in SKILL.md): with "Root Motion from everything" or
"Root Motion from Montages," **the Anim Graph updates on the Game Thread instead of
a Worker Thread** — you lose the parallelism. Use it deliberately.

Root motion respects physics state: while Walking/Falling the Z is ignored and
gravity applies (you go down slopes / up stairs); while Flying the full root motion
applies. Debug with **All Hierarchy** bone drawing (red root-bone line) and
`show collision`.

## 6. Paper2D — 2D flipbook animation

Source: `...Paper_2D_Flipbooks.md`,
`...Paper_2D_-_How_To_Setting_up_an_Animation_State_Machine.md`,
`...Paper_2D_Sprites.md`.

For 2D, the skeletal stack is replaced by:
- **Sprites** — single 2D images (a `UPaperSprite`).
- **Flipbooks** — sequences of sprites played as a frame-based animation
  (`UPaperFlipbook`, shown by a `UPaperFlipbookComponent`).
- An **animation state machine** built in the actor's logic (the "Setting up an
  Animation State Machine" how-to) that swaps the active flipbook based on state
  (idle/run/jump) — conceptually the same idea as the skeletal state machine, but
  you select a *flipbook* instead of blending poses.

Sprite *import* settings live on the rendering side; this skill owns the flipbook
animation state machine. There is no blend space / montage equivalent in Paper2D —
you set the current flipbook.
