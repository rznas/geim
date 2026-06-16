#!/usr/bin/env bash
# new_network_behaviour.sh — scaffold a minimal Netcode for GameObjects (NGO)
# NetworkBehaviour C# file: a server-owned NetworkVariable<int> + a [ServerRpc].
#
# Writes a .cs FILE ONLY (no project changes, no compile). It is doc-sourced from
# Unity's published NGO package docs and is NOT compile-tested in this
# environment (no Unity Editor installed, and the NGO API is not in the embedded
# local ScriptReference — see ../references/netcode_for_gameobjects.md).
#
# IMPORTANT — for the generated file to compile you MUST:
#   1. Add the package:  com.unity.netcode.gameobjects  (Window > Package Manager,
#      or add it to Packages/manifest.json). Without it, `using Unity.Netcode;`
#      does not resolve and NetworkBehaviour/NetworkVariable/[ServerRpc] are unknown.
#   2. Put a NetworkObject component on the same GameObject as this script.
#   3. Register the prefab with NetworkManager (its NetworkPrefabs list) so it can
#      be spawned across the network.
#
# Usage:
#   new_network_behaviour.sh <ClassName> [output_dir]
# Example:
#   new_network_behaviour.sh PlayerHealth Assets/Scripts/Net

set -euo pipefail

CLASS="${1:-}"
OUT_DIR="${2:-.}"

if [[ -z "$CLASS" ]]; then
  echo "usage: $(basename "$0") <ClassName> [output_dir]" >&2
  exit 2
fi

# Unity requires the file name to match the class name exactly.
if ! [[ "$CLASS" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: '$CLASS' is not a valid C# identifier (file name must match class name)." >&2
  exit 2
fi

mkdir -p "$OUT_DIR"
OUT_FILE="$OUT_DIR/$CLASS.cs"

if [[ -e "$OUT_FILE" ]]; then
  echo "error: $OUT_FILE already exists; refusing to overwrite." >&2
  exit 1
fi

# Quoted heredoc so backticks / $ in the template are NOT interpreted by bash;
# the class name is injected afterward by replacing the __CLASS__ placeholder.
cat > "$OUT_FILE" <<'EOF'
// __CLASS__.cs
// Minimal Netcode for GameObjects (NGO) NetworkBehaviour.
//
// REQUIRES the package: com.unity.netcode.gameobjects (add via UPM /
// Packages/manifest.json) — `using Unity.Netcode;` will not resolve otherwise.
// Attach to a GameObject that ALSO has a NetworkObject component, and register
// the prefab with NetworkManager so it can be spawned across the network.
//
// Server-authoritative model:
//   * NetworkVariable<T> : server writes, everyone reads (default permissions).
//   * [ServerRpc]        : a CLIENT calls it, the body runs on the SERVER.
//                          (Method name MUST end in "ServerRpc".)
//   * [ClientRpc]        : the SERVER calls it, the body runs on CLIENTS.
//                          (Method name MUST end in "ClientRpc".)
//
// Doc-sourced from Unity's NGO docs; NOT compile-tested in this environment.

using Unity.Netcode;
using UnityEngine;

public class __CLASS__ : NetworkBehaviour
{
    // Server-owned state. Clients read it; the server is the only writer
    // (default permissions). OnValueChanged fires on every reader when it changes.
    public NetworkVariable<int> Counter = new NetworkVariable<int>(0);

    public override void OnNetworkSpawn()
    {
        // Runs on every peer once this object is network-spawned.
        Counter.OnValueChanged += OnCounterChanged;
    }

    public override void OnNetworkDespawn()
    {
        Counter.OnValueChanged -= OnCounterChanged;
    }

    private void OnCounterChanged(int previous, int current)
    {
        Debug.Log($"__CLASS__ counter: {previous} -> {current}");
    }

    // CLIENT -> SERVER. The body executes on the server only, so it is safe to
    // mutate authoritative state here. By default only the NetworkObject's owner
    // may invoke this; add [ServerRpc(RequireOwnership = false)] to allow others.
    [ServerRpc]
    public void IncrementServerRpc(int amount = 1)
    {
        // Reached only on the server.
        Counter.Value += amount;   // legal: the server is writing.

        // Optionally notify clients of a one-off event:
        // NotifyClientRpc(Counter.Value);
    }

    // SERVER -> CLIENTS. The body executes on every client.
    [ClientRpc]
    public void NotifyClientRpc(int newValue)
    {
        // Cosmetic / client-side reaction only.
        Debug.Log($"__CLASS__ notified of value {newValue}");
    }
}
EOF

# Inject the class name into the placeholders.
sed -i "s/__CLASS__/$CLASS/g" "$OUT_FILE"

echo "wrote $OUT_FILE"
echo "NOTE: requires the com.unity.netcode.gameobjects package + a NetworkObject"
echo "      on the same GameObject. Doc-sourced, not compile-tested."
