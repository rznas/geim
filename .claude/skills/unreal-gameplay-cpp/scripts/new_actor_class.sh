#!/usr/bin/env bash
# new_actor_class.sh — scaffold a correctly-formed AActor subclass in C++.
#
# Writes <Name>.h + <Name>.cpp into an output dir. The generated header has the
# four things UE's reflection system REQUIRES (forgetting any one of them is the
# single most common "my class is invisible / gets garbage-collected" bug):
#   1. #include "<Name>.generated.h"  -> MUST be the last include
#   2. UCLASS()                       -> makes the class a reflected UClass
#   3. GENERATED_BODY()               -> wires up the generated reflection code
#   4. UPROPERTY()                    -> a UObject* member is invisible to the
#                                        editor/Blueprint/serialization AND can be
#                                        garbage-collected unless marked UPROPERTY
#
# It also gives you a default subobject component (TObjectPtr + UPROPERTY +
# CreateDefaultSubobject) and BeginPlay/Tick overrides, grounded in the embedded
# docs (Programming Quick Start, C++ Only example, Actor Lifecycle).
#
# This writes FILES ONLY. It does NOT compile (no Unreal Engine is installed in
# this environment) — see scripts/unreal.sh. Add the files to a module Source/
# dir, then build with unreal-project-setup / unreal-build-deploy-multiplayer.
#
# Usage:
#   new_actor_class.sh <Name> [outdir] [API_MACRO]
#
#   <Name>      Class name WITHOUT the A prefix (e.g. FloatingPlatform). The
#               script prepends 'A' to form the class name AFloatingPlatform and
#               writes FloatingPlatform.h / FloatingPlatform.cpp (UE convention:
#               file name = class name minus the A/U prefix).
#   [outdir]    Directory to write into (default: current dir). Created if absent.
#   [API_MACRO] DLL-export macro for the class (default: <NAME>_API derived from
#               the project/module). Pass your real module's, e.g. MYGAME_API.
#
# Examples:
#   new_actor_class.sh FloatingPlatform
#   new_actor_class.sh Pickup Source/MyGame MYGAME_API

set -euo pipefail

die() { echo "new_actor_class.sh: $*" >&2; exit 1; }

[[ $# -ge 1 ]] || die "usage: new_actor_class.sh <Name> [outdir] [API_MACRO]"

RAW_NAME="$1"
OUTDIR="${2:-.}"

# Reflection / UHT require a valid C++ identifier. Reject anything else early.
[[ "$RAW_NAME" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]] \
  || die "'$RAW_NAME' is not a valid C++ identifier."

# UE convention: AActor subclasses are prefixed 'A'. If the caller already typed
# an A-prefixed PascalCase name (e.g. AFoo) honor it; the FILE name drops the A.
if [[ "$RAW_NAME" =~ ^A[A-Z] ]]; then
  CLASS="$RAW_NAME"
  FILEBASE="${RAW_NAME#A}"
else
  CLASS="A${RAW_NAME}"
  FILEBASE="$RAW_NAME"
fi

# Default API macro: <FILEBASE_UPPER>_API. Real projects pass their module's.
API_MACRO="${3:-$(printf '%s' "$FILEBASE" | tr '[:lower:]' '[:upper:]')_API}"

mkdir -p "$OUTDIR"
HDR="$OUTDIR/$FILEBASE.h"
SRC="$OUTDIR/$FILEBASE.cpp"

[[ -e "$HDR" ]] && die "$HDR already exists — refusing to overwrite."
[[ -e "$SRC" ]] && die "$SRC already exists — refusing to overwrite."

cat > "$HDR" <<EOF
// Scaffolded by new_actor_class.sh (unreal-gameplay-cpp). Not compile-tested.
#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "$FILEBASE.generated.h"   // MUST be the LAST include

class USceneComponent;

UCLASS()
class ${API_MACRO} ${CLASS} : public AActor
{
	GENERATED_BODY()

public:
	// Sets default values for this actor's properties.
	${CLASS}();

	// Called every frame.
	virtual void Tick(float DeltaTime) override;

protected:
	// Called when the game starts or when spawned.
	virtual void BeginPlay() override;

	// A default subobject component. The UPROPERTY is NOT optional: without it
	// this pointer is invisible to the editor and can be garbage-collected.
	// TObjectPtr is the modern (UE5) way to hold a UPROPERTY object pointer.
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Components")
	TObjectPtr<USceneComponent> Root;

	// Example tunable, exposed to the editor Details panel + Blueprint.
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "${FILEBASE}")
	float ExampleValue = 1.0f;
};
EOF

cat > "$SRC" <<EOF
// Scaffolded by new_actor_class.sh (unreal-gameplay-cpp). Not compile-tested.
#include "$FILEBASE.h"
#include "Components/SceneComponent.h"

${CLASS}::${CLASS}()
{
	// Enable Tick(). Turn off if you don't need per-frame updates (perf).
	PrimaryActorTick.bCanEverTick = true;

	// Create the component and make it the root. Only create subobjects and set
	// default values here — do NOT call gameplay logic in the constructor.
	Root = CreateDefaultSubobject<USceneComponent>(TEXT("Root"));
	RootComponent = Root;
}

void ${CLASS}::BeginPlay()
{
	Super::BeginPlay();
	// Gameplay init goes here (the actor and its components are now live).
}

void ${CLASS}::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
	// Per-frame logic. Scale movement by DeltaTime for frame-rate independence.
}
EOF

echo "Wrote:"
echo "  $HDR"
echo "  $SRC"
echo "Class: $CLASS   API macro: $API_MACRO"
echo "Reminder: place these in a module Source/ dir and build (no engine here)."
