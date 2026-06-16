#!/usr/bin/env bash
# new_bp_exposed_cpp.sh — scaffold a C++ AActor subclass that exposes itself to
# Blueprint the idiomatic "C++ base, Blueprint child" way (UE 5.6/5.7):
#
#   * UCLASS(Blueprintable, BlueprintType)          -> a designer can right-click
#                                                      and "Create Blueprint Class"
#                                                      from this C++ class.
#   * UPROPERTY(EditAnywhere, BlueprintReadWrite)   -> tunable variable, visible &
#                                                      writable in the BP graph and
#                                                      the Details panel.
#   * UFUNCTION(BlueprintCallable)                  -> C++ logic callable from the
#                                                      BP graph (impure, has exec pins).
#   * UFUNCTION(BlueprintImplementableEvent)        -> a hook C++ raises that the
#                                                      Blueprint child implements
#                                                      (no C++ body; do NOT define one).
#
# This writes a .h/.cpp pair ONLY. Blueprints themselves are authored in the
# editor (binary .uasset) and cannot be scaffolded as text — you create the BP
# child of this class in-editor (Content Browser > right-click the C++ class >
# Create Blueprint Class). See SKILL.md.
#
# Doc-sourced from references/api/ (Exposing Gameplay Elements / Exposing C++ to
# Blueprints). NOT compiled here (no Unreal Engine installed — see unreal.sh).
#
# Usage:
#   new_bp_exposed_cpp.sh <ClassNameNoPrefix> [ModuleApiMacro] [outdir]
#     <ClassNameNoPrefix>  e.g. Pickup  -> class APickup : public AActor
#     [ModuleApiMacro]     e.g. MYGAME_API (default: derived from class, GAME_API)
#     [outdir]             default: current directory
#
# Example:
#   new_bp_exposed_cpp.sh Pickup MYGAME_API Source/MyGame

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "usage: $(basename "$0") <ClassNameNoPrefix> [ModuleApiMacro] [outdir]" >&2
  echo "  e.g. $(basename "$0") Pickup MYGAME_API Source/MyGame" >&2
  exit 2
fi

RAW="$1"
API="${2:-GAME_API}"
OUTDIR="${3:-.}"

# Strip a leading A/U/F prefix if the caller passed one; we add A (Actor) below.
NAME="${RAW#A}"; NAME="${NAME#U}"; NAME="${NAME#F}"

# Validate identifier: must be a legal C++ class name (letters/digits/underscore,
# not starting with a digit).
if ! [[ "$NAME" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: '$RAW' is not a valid C++ identifier for a class name." >&2
  exit 1
fi

CLASS="A${NAME}"            # AActor subclass -> 'A' prefix is mandatory in UE.
HEADER="${OUTDIR}/${NAME}.h"
SOURCE="${OUTDIR}/${NAME}.cpp"

mkdir -p "$OUTDIR"

if [[ -e "$HEADER" || -e "$SOURCE" ]]; then
  echo "error: ${HEADER} or ${SOURCE} already exists — refusing to overwrite." >&2
  exit 1
fi

cat > "$HEADER" <<EOF
// ${NAME}.h — C++ base class exposed to Blueprint (UE 5.6/5.7).
// Make a Blueprint child of this in-editor: Content Browser > right-click this
// C++ class > Create Blueprint Class. The child sets meshes/defaults and
// implements OnCollected. Doc-sourced; not compile-tested.
#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "${NAME}.generated.h"

// Blueprintable  -> can be a parent for a Blueprint Class.
// BlueprintType  -> can be used as a variable type in Blueprints.
UCLASS(Blueprintable, BlueprintType)
class ${API} ${CLASS} : public AActor
{
	GENERATED_BODY()

public:
	${CLASS}();

	// Tunable from the BP graph AND the Details panel; designers change it
	// without recompiling. (EditAnywhere = editor; BlueprintReadWrite = graph.)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "${NAME}")
	float Score = 10.0f;

	// C++ logic the Blueprint graph can call. Impure -> it has exec pins.
	UFUNCTION(BlueprintCallable, Category = "${NAME}")
	void Collect();

	// C++-calls-up-into-Blueprint hook. NO C++ body — the Blueprint child
	// implements this (spawn FX, play sound, etc). Declaration only.
	UFUNCTION(BlueprintImplementableEvent, Category = "${NAME}")
	void OnCollected();

protected:
	virtual void BeginPlay() override;
};
EOF

cat > "$SOURCE" <<EOF
// ${NAME}.cpp — implementation. Note: OnCollected has NO body here — it is a
// BlueprintImplementableEvent, implemented in the Blueprint child. Defining it
// in C++ would be a compile error (the UHT-generated thunk already provides it).
#include "${NAME}.h"

${CLASS}::${CLASS}()
{
	PrimaryActorTick.bCanEverTick = false;
}

void ${CLASS}::BeginPlay()
{
	Super::BeginPlay();
}

void ${CLASS}::Collect()
{
	// ... native logic (award Score, disable collision, etc.) ...

	// Raise the hook so the Blueprint child can react (FX / SFX / scoring UI).
	OnCollected();
}
EOF

echo "Wrote:"
echo "  $HEADER"
echo "  $SOURCE"
echo
echo "Next: place ${NAME}.h/.cpp under a module's Source/<Module>/ dir, regenerate"
echo "project files + build (see unreal-project-setup / unreal-gameplay-cpp), then"
echo "in-editor create a Blueprint Class child of ${CLASS} and implement OnCollected."
