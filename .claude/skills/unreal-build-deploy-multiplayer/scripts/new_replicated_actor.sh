#!/usr/bin/env bash
# new_replicated_actor.sh — scaffold a server-authoritative replicated AActor
# (.h + .cpp) for UE 5.6/5.7 C++.
#
# Emits an AActor subclass with:
#   - bReplicates = true  in the constructor
#   - a UPROPERTY(ReplicatedUsing=OnRep_Health) replicated variable + its OnRep_
#   - GetLifetimeReplicatedProps override + DOREPLIFETIME(Health)
#   - a UFUNCTION(Server, Reliable) RPC + its *_Implementation
#
# File-only: writes source, touches no engine. Grounded in
#   references/api/...Programming_Multiplayer_Games_Replicate_Actor_Properties.md
#   references/api/...Programming_Multiplayer_Games_Remote_Procedure_Calls.md
#   references/api/...Multiplayer_Programming_Quick_Start.md
#
# Usage: new_replicated_actor.sh <output-dir> <ActorName>
#   <ActorName>  class name WITHOUT the leading 'A' (e.g. "Pickup" -> APickup,
#                files Pickup.h / Pickup.cpp). A leading 'A' is stripped if given.

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "usage: $(basename "$0") <output-dir> <ActorName>" >&2
  echo "  e.g. $(basename "$0") Source/MyGame/Actors Pickup" >&2
  exit 2
fi

OUT_DIR="$1"
RAW_NAME="$2"

# Strip a leading 'A' if the caller passed the prefixed form, then re-prefix.
BASE="${RAW_NAME#A}"
if [[ -z "$BASE" || ! "$BASE" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: invalid actor name '$RAW_NAME' (use a C++ identifier, e.g. Pickup)" >&2
  exit 2
fi
CLASS="A${BASE}"          # e.g. APickup
HEADER="${BASE}.h"        # e.g. Pickup.h
SOURCE="${BASE}.cpp"      # e.g. Pickup.cpp

mkdir -p "$OUT_DIR"
H_PATH="${OUT_DIR%/}/${HEADER}"
C_PATH="${OUT_DIR%/}/${SOURCE}"

if [[ -e "$H_PATH" || -e "$C_PATH" ]]; then
  echo "error: refusing to overwrite existing ${H_PATH} / ${C_PATH}" >&2
  exit 1
fi

cat > "$H_PATH" <<EOF
// ${HEADER} — scaffolded server-authoritative replicated actor (UE 5.6/5.7).
#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "${BASE}.generated.h"

UCLASS()
class ${CLASS} : public AActor
{
    GENERATED_BODY()

public:
    ${CLASS}();

    // --- Property replication --------------------------------------------
    // Override so DOREPLIFETIME can register replicated properties.
    virtual void GetLifetimeReplicatedProps(
        TArray<FLifetimeProperty>& OutLifetimeProps) const override;

    // --- Server RPC: called on the OWNING CLIENT, executes on the SERVER --
    // Reliable: re-sent until acknowledged. WithValidation: _Validate runs
    // first on the server; returning false disconnects the calling client.
    UFUNCTION(Server, Reliable, WithValidation)
    void ServerSetHealth(int32 NewHealth);

protected:
    // Replicated property. ReplicatedUsing fires OnRep_Health on clients
    // whenever the server pushes a new value. (Replicated alone = no notify.)
    UPROPERTY(ReplicatedUsing = OnRep_Health, EditAnywhere, Category = "${BASE}")
    int32 Health = 100;

    // RepNotify — runs on clients after Health replicates.
    UFUNCTION()
    void OnRep_Health();
};
EOF

cat > "$C_PATH" <<EOF
// ${SOURCE} — scaffolded server-authoritative replicated actor (UE 5.6/5.7).
#include "${HEADER}"
#include "Net/UnrealNetwork.h"   // required for DOREPLIFETIME

${CLASS}::${CLASS}()
{
    PrimaryActorTick.bCanEverTick = false;

    // Mark this actor to replicate. Without this, nothing below replicates.
    bReplicates = true;
}

void ${CLASS}::GetLifetimeReplicatedProps(
    TArray<FLifetimeProperty>& OutLifetimeProps) const
{
    // Always call Super or inherited replicated properties stop replicating.
    Super::GetLifetimeReplicatedProps(OutLifetimeProps);

    // Register every replicated UPROPERTY here — omitting this line means the
    // property is marked Replicated but SILENTLY never replicates.
    DOREPLIFETIME(${CLASS}, Health);
}

void ${CLASS}::OnRep_Health()
{
    // Runs on clients when Health replicates. Update HUD / play feedback here.
    UE_LOG(LogTemp, Log, TEXT("${CLASS}: Health replicated to %d"), Health);
}

bool ${CLASS}::ServerSetHealth_Validate(int32 NewHealth)
{
    // Trust-and-verify: reject impossible values. false => client is kicked.
    return NewHealth >= 0 && NewHealth <= 100;
}

void ${CLASS}::ServerSetHealth_Implementation(int32 NewHealth)
{
    // Executes on the server (authority). Setting the replicated property here
    // propagates the new value to all clients, firing their OnRep_Health.
    Health = NewHealth;
}
EOF

echo "scaffolded:"
echo "  ${H_PATH}"
echo "  ${C_PATH}"
echo "class ${CLASS} (bReplicates, ReplicatedUsing Health + DOREPLIFETIME, Server RPC)."
echo "note: add the file's module to its .Build.cs deps if needed; UE C++ is not compile-tested here."
