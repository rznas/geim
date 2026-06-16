#!/usr/bin/env bash
# new_anim_instance.sh — scaffold a UAnimInstance C++ subclass (.h + .cpp).
#
#   ./new_anim_instance.sh <ClassName> [ModuleName] [output-dir]
#
# Produces <output-dir>/<ClassName>.h and <ClassName>.cpp: a C++ Animation
# Instance (the native parent class of an Animation Blueprint). It declares
# UPROPERTY(BlueprintReadOnly) variables (Speed / Direction / bIsInAir) and
# updates them every frame in NativeUpdateAnimation — these are EXACTLY the
# values the Anim Graph's state machine and blend spaces read to choose and
# blend poses.
#
# THE UNREAL MODEL: gameplay code does NOT set bone poses or "play a walk clip"
# from C++. It sets variables on this AnimInstance; the Anim Graph (built in the
# AnimBP that has this class as its Parent Class) reads them. One-shot actions
# (attacks, hit reactions) are the exception — those you fire imperatively with
# Montage_Play / PlayAnimMontage layered over the base state machine.
#
# The generated header derives from UAnimInstance and overrides
# NativeInitializeAnimation() + NativeUpdateAnimation(float DeltaSeconds) — the
# C++ equivalents of the AnimBP "Initialize Animation" / "Update Animation"
# event-graph nodes (references/api/...Graphing_in_Animation_Blueprints.md).
#
# File-only: no Unreal Engine required. The class is doc-sourced from the
# embedded UE 5.6/5.7 documentation and is NOT compile-tested here (no engine).
# After generating, set this class as the Parent Class of your Animation
# Blueprint, then bind the Anim Graph's blend-space / state-machine inputs to
# these BlueprintReadOnly variables.

set -euo pipefail

CLASS="${1:-}"
MODULE="${2:-MYGAME}"
OUTDIR="${3:-.}"

if [[ -z "$CLASS" ]]; then
  echo "usage: $0 <ClassName> [ModuleName] [output-dir]" >&2
  echo "  e.g. $0 UMyCharAnimInstance MYGAME Source/MyGame/Animation" >&2
  exit 2
fi

# UE convention: a UObject-derived class name starts with 'U'. Accept names with
# or without it, but the C++ identifier still has to be valid.
if ! [[ "$CLASS" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: '$CLASS' is not a valid C++ identifier." >&2
  exit 2
fi
if [[ "${CLASS:0:1}" != "U" ]]; then
  echo "warning: UE convention names UObject-derived classes with a leading 'U'" >&2
  echo "         (e.g. U${CLASS}). Continuing with '$CLASS' as given." >&2
fi

# The reflected name (UCLASS uses the name WITHOUT the leading U/A/F prefix).
API_MACRO="${MODULE}_API"

mkdir -p "$OUTDIR"
HDR="$OUTDIR/$CLASS.h"
SRC="$OUTDIR/$CLASS.cpp"

cat > "$HDR" <<EOF
// $CLASS.h — a C++ Animation Instance (native parent class of an Animation Blueprint).
//
// THE MODEL: this object exposes BlueprintReadOnly variables that the AnimBP's
// Anim Graph reads (state machine conditions, blend-space axes). Gameplay code
// never pokes bones — it sets these variables (or, for one-shots, calls
// Montage_Play on the SkeletalMeshComponent's anim instance).
//
// Doc-sourced from the embedded UE 5.6/5.7 docs; NOT compile-tested here.
#pragma once

#include "CoreMinimal.h"
#include "Animation/AnimInstance.h"
#include "$CLASS.generated.h"

UCLASS()
class ${API_MACRO} $CLASS : public UAnimInstance
{
    GENERATED_BODY()

public:
    // C++ equivalents of the AnimBP "Initialize Animation" / "Update Animation"
    // event nodes. NativeUpdateAnimation runs every frame and is where you push
    // gameplay state into the variables below.
    virtual void NativeInitializeAnimation() override;
    virtual void NativeUpdateAnimation(float DeltaSeconds) override;

    // ---- Variables the Anim Graph reads (BlueprintReadOnly = the graph can
    //      bind to them, but they are owned/written here in C++). ----

    // Ground speed; feed this into a 1D/2D blend space (idle <-> walk <-> run).
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    float Speed = 0.0f;

    // Movement direction relative to facing (-180..180); drives strafe blends.
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    float Direction = 0.0f;

    // True while airborne; a state-machine transition (Locomotion -> Jump/Fall)
    // tests this.
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    bool bIsInAir = false;

    // True while the owning pawn is providing movement input (idle vs moving).
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    bool bIsAccelerating = false;

protected:
    // Cached owner so the per-frame update is cheap and null-safe.
    UPROPERTY(BlueprintReadOnly, Category = "Animation")
    TObjectPtr<class APawn> OwningPawn = nullptr;
};
EOF

cat > "$SRC" <<EOF
// $CLASS.cpp — implementation. Reads owner movement each frame and writes the
// BlueprintReadOnly variables the Anim Graph consumes. Doc-sourced; not compiled.

#include "$CLASS.h"
#include "GameFramework/Pawn.h"
#include "GameFramework/PawnMovementComponent.h"

void $CLASS::NativeInitializeAnimation()
{
    Super::NativeInitializeAnimation();

    // TryGetPawnOwner() returns the pawn this anim instance is animating, or
    // nullptr (e.g. in the AnimBP preview). Cache it once.
    OwningPawn = TryGetPawnOwner();
}

void $CLASS::NativeUpdateAnimation(float DeltaSeconds)
{
    Super::NativeUpdateAnimation(DeltaSeconds);

    if (OwningPawn == nullptr)
    {
        // Re-acquire in case the instance initialized before possession.
        OwningPawn = TryGetPawnOwner();
        if (OwningPawn == nullptr)
        {
            return;
        }
    }

    // Velocity drives the locomotion blend space. Ground speed = horizontal mag.
    const FVector Velocity = OwningPawn->GetVelocity();
    Speed = Velocity.Size2D();

    // Direction relative to where the pawn is facing (for strafe/turn blends).
    Direction = CalculateDirection(Velocity, OwningPawn->GetActorRotation());

    // Are we moving under input? (idle vs locomotion state).
    bIsAccelerating = !Velocity.IsNearlyZero();

    // Airborne test via the movement component, when present.
    if (const UPawnMovementComponent* Move = OwningPawn->GetMovementComponent())
    {
        bIsInAir = Move->IsFalling();
    }
}
EOF

echo "wrote: $HDR"
echo "wrote: $SRC"
echo
echo "Next steps (in the editor / your IDE):"
echo "  1. Create an Animation Blueprint and set its Parent Class to $CLASS."
echo "  2. In the Anim Graph, bind your blend space / state-machine conditions"
echo "     to Speed / Direction / bIsInAir / bIsAccelerating."
echo "  3. Fire one-shots (attacks, hit reacts) via Montage_Play / PlayAnimMontage"
echo "     through a DefaultSlot node layered over the locomotion output."
