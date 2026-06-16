#!/usr/bin/env bash
# new_ai_controller.sh — scaffold an AAIController C++ subclass (.h/.cpp).
#
# Produces a ready-to-extend A<Name> : AAIController that:
#   - runs a Behavior Tree on possession (OnPossess) / BeginPlay,
#   - exposes a UBlackboardComponent (initialized from the BT's Blackboard),
#   - stubs an AIPerception OnTargetPerceptionUpdated hook (sight) that pushes
#     the seen actor + a HasLineOfSight bool into the Blackboard.
#
# This is FILE-ONLY: it writes source you wire into a module that builds with
# unreal-project-setup. The C++ is doc-sourced (UE 5.6/5.7), NOT compile-tested
# here (no engine installed). Remember to add the modules below to <Module>.Build.cs:
#   PublicDependencyModuleNames += { "AIModule", "GameplayTasks", "NavigationSystem" };
# and assign BTAsset / a Behavior Tree (+ an AIPerception Sight config) in the editor.
#
# Usage: new_ai_controller.sh <projdir> <ModuleName> <ControllerName> [subdir]
#   <projdir>        project root that contains Source/<ModuleName>/
#   <ModuleName>     your game module (used for the *_API export macro + include)
#   <ControllerName> PascalCase, WITHOUT the leading 'A' (e.g. EnemyAIController)
#   [subdir]         optional subfolder under Source/<ModuleName>/ (default: AI)

set -euo pipefail

DIR="${1:?usage: new_ai_controller.sh <projdir> <ModuleName> <ControllerName> [subdir]}"
MODULE="${2:?need ModuleName (your game module, e.g. MyGame)}"
NAME="${3:?need ControllerName in PascalCase without leading A (e.g. EnemyAIController)}"
SUBDIR="${4:-AI}"

if ! [[ "$MODULE" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "ModuleName must be a valid C identifier (got: $MODULE)" >&2; exit 2
fi
if ! [[ "$NAME" =~ ^[A-Z][A-Za-z0-9_]*$ ]]; then
  echo "ControllerName must be PascalCase without the leading A (got: $NAME)" >&2; exit 2
fi

API_MACRO="$(echo "$MODULE" | tr '[:lower:]' '[:upper:]')_API"
DEST="$DIR/Source/$MODULE/$SUBDIR"
HDR="$DEST/$NAME.h"
SRC="$DEST/$NAME.cpp"

mkdir -p "$DEST"
[[ -e "$HDR" ]] && { echo "refusing to overwrite $HDR" >&2; exit 1; }
[[ -e "$SRC" ]] && { echo "refusing to overwrite $SRC" >&2; exit 1; }

cat > "$HDR" <<EOF
// $NAME.h — scaffolded by new_ai_controller.sh (unreal-physics-and-ai).
// Doc-sourced for UE 5.6/5.7; not compile-tested (no engine installed here).
#pragma once

#include "CoreMinimal.h"
#include "AIController.h"
#include "Perception/AIPerceptionTypes.h"
#include "$NAME.generated.h"

class UBehaviorTree;
class UBlackboardComponent;
class UAIPerceptionComponent;
class UAISenseConfig_Sight;
struct FAIStimulus;

/**
 * A${NAME}: drives a possessed Pawn with a Behavior Tree + Blackboard, and
 * updates the Blackboard from AI Perception (Sight) so the tree can branch on it.
 * Wire up: set BehaviorTree, give the BT a Blackboard with the keys below,
 * place a NavMeshBoundsVolume in the level, and set this as the Pawn's
 * AI Controller Class (AutoPossessAI = PlacedInWorldOrSpawned).
 */
UCLASS()
class ${API_MACRO} A$NAME : public AAIController
{
    GENERATED_BODY()

public:
    A$NAME();

    // The Behavior Tree to run on possession. Assign in the editor (Class Defaults).
    UPROPERTY(EditDefaultsOnly, Category = "AI")
    TObjectPtr<UBehaviorTree> BehaviorTree;

    // Blackboard key names the perception hook writes (match your Blackboard asset).
    UPROPERTY(EditDefaultsOnly, Category = "AI")
    FName TargetActorKey = TEXT("EnemyActor");

    UPROPERTY(EditDefaultsOnly, Category = "AI")
    FName HasLineOfSightKey = TEXT("HasLineOfSight");

    UFUNCTION(BlueprintCallable, Category = "AI")
    UBlackboardComponent* GetBlackboard() const { return BlackboardComp; }

protected:
    virtual void BeginPlay() override;
    virtual void OnPossess(APawn* InPawn) override;

    // Perception hook — fires when a sensed actor's stimulus changes.
    UFUNCTION()
    void OnTargetPerceptionUpdated(AActor* Actor, FAIStimulus Stimulus);

    // Created in the constructor; senses configured in BeginPlay.
    UPROPERTY(VisibleAnywhere, Category = "AI")
    TObjectPtr<UAIPerceptionComponent> PerceptionComp;

    UPROPERTY()
    TObjectPtr<UAISenseConfig_Sight> SightConfig;

    UPROPERTY()
    TObjectPtr<UBlackboardComponent> BlackboardComp;

private:
    void StartBehavior(APawn* InPawn);
};
EOF

cat > "$SRC" <<EOF
// $NAME.cpp — scaffolded by new_ai_controller.sh (unreal-physics-and-ai).
// Doc-sourced for UE 5.6/5.7; not compile-tested (no engine installed here).
#include "$SUBDIR/$NAME.h"

#include "BehaviorTree/BehaviorTree.h"
#include "BehaviorTree/BlackboardComponent.h"
#include "Perception/AIPerceptionComponent.h"
#include "Perception/AISenseConfig_Sight.h"
#include "Perception/AISense_Sight.h"

A$NAME::A$NAME()
{
    // AIPerception lives on the controller (per references/api/...AI_Perception.md).
    PerceptionComp = CreateDefaultSubobject<UAIPerceptionComponent>(TEXT("Perception"));
    SetPerceptionComponent(*PerceptionComp);

    // Configure a Sight sense (radii / FOV per references/api/...AI_Perception.md "AI Sight").
    SightConfig = CreateDefaultSubobject<UAISenseConfig_Sight>(TEXT("SightConfig"));
    SightConfig->SightRadius = 1500.f;
    SightConfig->LoseSightRadius = 2000.f;
    SightConfig->PeripheralVisionAngleDegrees = 60.f;
    SightConfig->SetMaxAge(5.f);
    SightConfig->DetectionByAffiliation.bDetectEnemies   = true;
    SightConfig->DetectionByAffiliation.bDetectNeutrals  = true;   // Affiliation is C++-only; neutrals catches unteamed actors
    SightConfig->DetectionByAffiliation.bDetectFriendlies = true;
    PerceptionComp->ConfigureSense(*SightConfig);
    PerceptionComp->SetDominantSense(SightConfig->GetSenseImplementation());
}

void A$NAME::BeginPlay()
{
    Super::BeginPlay();

    // Bind the perception delegate (handler MUST be UFUNCTION for AddDynamic).
    if (PerceptionComp)
    {
        PerceptionComp->OnTargetPerceptionUpdated.AddDynamic(
            this, &A$NAME::OnTargetPerceptionUpdated);
    }
}

void A$NAME::OnPossess(APawn* InPawn)
{
    Super::OnPossess(InPawn);
    StartBehavior(InPawn);   // run the tree once we have a body
}

void A$NAME::StartBehavior(APawn* InPawn)
{
    if (!BehaviorTree)
    {
        UE_LOG(LogTemp, Warning, TEXT("[%s] No BehaviorTree assigned."), *GetName());
        return;
    }

    // RunBehaviorTree initializes the Blackboard from the tree's Blackboard asset
    // and starts execution (per references/api/...Behavior_Tree_Overview.md / Quick_Start).
    if (RunBehaviorTree(BehaviorTree))
    {
        BlackboardComp = GetBlackboardComponent();
    }
}

void A$NAME::OnTargetPerceptionUpdated(AActor* Actor, FAIStimulus Stimulus)
{
    // Push perception result into the Blackboard so a Decorator can branch on it.
    // (references/api/...Behavior_Tree_Quick_Start_Guide.md uses exactly these keys.)
    if (!BlackboardComp || !Actor)
    {
        return;
    }

    const bool bSeen = Stimulus.WasSuccessfullySensed();
    BlackboardComp->SetValueAsBool(HasLineOfSightKey, bSeen);
    if (bSeen)
    {
        BlackboardComp->SetValueAsObject(TargetActorKey, Actor);
    }

    // TODO: start a "give up" timer on lose-sight, EQS query for last-known
    // location, filter by Actor->ActorHasTag("Player"), etc.
}
EOF

echo "wrote:"
echo "  $HDR"
echo "  $SRC"
echo
echo "Next:"
echo "  1. Add to Source/$MODULE/$MODULE.Build.cs PublicDependencyModuleNames:"
echo "       \"AIModule\", \"GameplayTasks\", \"NavigationSystem\""
echo "  2. Create a Blackboard (keys: $NAME defaults EnemyActor/HasLineOfSight) + Behavior Tree asset."
echo "  3. Assign the Behavior Tree on A$NAME (Class Defaults), set it as the Pawn's AI Controller Class."
echo "  4. Drop a NavMeshBoundsVolume in the level (press P to verify the green NavMesh)."
