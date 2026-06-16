# Netcode for GameObjects (NGO) — the model

> **SOURCING CAVEAT — read this.** Unlike the rest of this skill, this file is
> **NOT grounded in the embedded local docs.** The local Unity 6 ScriptReference
> (`references/api/`) contains **no NGO API pages** — its `Networking.*` namespace
> is entirely `UnityWebRequest` (HTTP). Only the package *landing* pages exist:
> `references/api/com.unity.netcode.gameobjects.md` (states package version
> **2.11.2** for Unity **6000.4**) and `references/api/com.unity.transport.md`
> (Unity Transport **2.7.3**). The real NGO API lives on Unity's published docs
> at **docs-multiplayer.unity3d.com**. Everything below is **doc-sourced from
> that published package documentation / the known NGO API surface and is
> ESPECIALLY NOT compile-tested here.** Treat exact attribute names and method
> signatures as needing verification against the installed package — after
> install, the authoritative source is the package itself under
> `Library/PackageCache/com.unity.netcode.gameobjects@2.11.*/`.

## What NGO is

Netcode for GameObjects is Unity's **high-level netcode SDK** — per the landing
page, "a high-level netcode SDK that provides networking capabilities to
GameObject/MonoBehaviour workflows ... and sits on top of [an] underlying
transport layer." That transport is **Unity Transport (UTP,
`com.unity.transport`)**. NGO is the GameObjects layer; UTP is the wire.

It is **not in core Unity**. The old UNet HLAPI was removed; NGO is the current
first-party replacement and ships as a separate UPM package.

## Installing the package (the gotcha)

None of the NGO types resolve until the package is added. Two ways:

- Editor: **Window → Package Manager → install `Netcode for GameObjects`**.
- By hand: add to `Packages/manifest.json`:

```json
{
  "dependencies": {
    "com.unity.netcode.gameobjects": "2.11.2"
  }
}
```

Unity Transport comes in as a dependency. Only after this does
`using Unity.Netcode;` compile.

## The core types

| Type | Role |
| --- | --- |
| `NetworkManager` | The session controller. One per scene (a singleton, `NetworkManager.Singleton`). Holds the transport, the prefab registry, and the connection callbacks. You call `StartHost()` / `StartServer()` / `StartClient()` on it. |
| `NetworkObject` | The component that makes a GameObject *networked*. No `NetworkObject` ⇒ it does not replicate. Carries the network identity (`NetworkObjectId`) and ownership. |
| `NetworkBehaviour` | Base class (instead of `MonoBehaviour`) for scripts that use `NetworkVariable`/RPCs. Must sit on a GameObject that has a `NetworkObject`. |
| `NetworkVariable<T>` | A field whose value the server syncs to readers automatically. |
| `[ServerRpc]` / `[ClientRpc]` | Remote method calls (see below). |
| `NetworkTransport` (UTP) | The transport component (`UnityTransport`) you attach alongside `NetworkManager`; sets address/port/protocol. |

## Host / Server / Client — pick one per process

- **Host** = server **and** a local client in the same process (most common for
  co-op and player-hosted games).
- **Dedicated server** = server only, no local player (run headless; package
  the build via `unity-build-deploy`).
- **Client** = connects to a remote host/server.

```csharp
using Unity.Netcode;

NetworkManager.Singleton.StartHost();    // server + local client
NetworkManager.Singleton.StartServer();  // dedicated server
NetworkManager.Singleton.StartClient();  // join a host/server
NetworkManager.Singleton.Shutdown();     // tear down
```

`NetworkManager.Singleton.IsServer` / `.IsClient` / `.IsHost` tell you which side
the running code is on — branch on these to keep authoritative logic server-side.

Connection lifecycle is exposed via callbacks on the manager, e.g.
`NetworkManager.Singleton.OnClientConnectedCallback` and
`OnClientDisconnectCallback` (each handed the connecting client's `ulong`
client id).

## NetworkVariable<T> — server-owned state

```csharp
public class Score : NetworkBehaviour
{
    // default permissions: Everyone can READ, only the Server can WRITE.
    public NetworkVariable<int> Value = new NetworkVariable<int>(0);

    public override void OnNetworkSpawn()
    {
        Value.OnValueChanged += (oldV, newV) => Debug.Log($"{oldV} -> {newV}");
    }

    public void AddPoint()
    {
        if (IsServer)            // guard: only the authority may write
            Value.Value += 1;
    }
}
```

- `T` must be a value type that NGO can serialize (numeric types, `bool`,
  `Vector3`, `FixedString*`, or your own `INetworkSerializable`/unmanaged struct).
- Default permissions are **read = Everyone, write = Server**. A client writing a
  server-owned `NetworkVariable` is rejected — that's the "write denied" symptom
  in `troubleshooting.md`. You can construct it with explicit
  `NetworkVariableReadPermission` / `NetworkVariableWritePermission` (e.g.
  `Owner` write) if a client genuinely should own a value.
- `OnValueChanged(oldValue, newValue)` fires on every reader when the value
  changes. Subscribe in `OnNetworkSpawn`, unsubscribe in `OnNetworkDespawn`.

## RPCs — crossing the wire

The mental model: **the attribute decides which side runs the body; the naming
suffix is mandatory.**

```csharp
// CLIENT -> SERVER. Name MUST end in "ServerRpc".
[ServerRpc]
void FireServerRpc(Vector3 dir) { /* runs on the server */ }

// SERVER -> CLIENTS. Name MUST end in "ClientRpc".
[ClientRpc]
void SpawnTracerClientRpc(Vector3 dir) { /* runs on every client */ }
```

Rules / common pitfalls:

- **Naming is enforced.** `[ServerRpc]` methods must end with `ServerRpc`,
  `[ClientRpc]` with `ClientRpc`, or NGO won't generate the dispatch code.
- **Ownership for ServerRpc.** By default only the **owner** of the
  `NetworkObject` may invoke a `[ServerRpc]`. If a non-owner needs to call it,
  declare `[ServerRpc(RequireOwnership = false)]`.
- **Parameters must be serializable** (same constraint family as
  `NetworkVariable`). Add a trailing `ServerRpcParams` / `ClientRpcParams` if you
  need to target specific clients or read the sender.
- **NGO 2.x also has a unified `[Rpc(SendTo.Server)]` / `[Rpc(SendTo.ClientsAndHost)]`
  attribute** as a newer alternative to the Server/Client pair. The
  `ServerRpc`/`ClientRpc` pair is still the canonical, widely-documented form —
  prefer it unless the codebase already uses the unified `[Rpc]`. **Verify which
  the installed version expects.**

## Spawning — nothing replicates until it's spawned

- A prefab must (a) have a `NetworkObject` component and (b) be registered with
  the `NetworkManager` (its **NetworkPrefabs** list / a `NetworkPrefabsList`).
- The **server** spawns it: `Instantiate(prefab)` then
  `GetComponent<NetworkObject>().Spawn()`. NGO then creates the replica on every
  client. A plain client-side `Instantiate` is local-only and invisible to peers.
- Player objects can be auto-spawned per connection (set a Player Prefab on the
  NetworkManager). `SpawnAsPlayerObject(clientId)` ties an object to a client.
- Despawn/destroy on the server with `.Despawn()` — clients follow.

```csharp
// SERVER side only
var go = Instantiate(enemyPrefab, pos, Quaternion.identity);
go.GetComponent<NetworkObject>().Spawn();   // now replicated to all clients
```

## Ownership

Every spawned `NetworkObject` has an **owner** (a client id; server-owned by
default). Ownership gates default `ServerRpc` invocation and any
owner-write `NetworkVariable`. Check `IsOwner` in a `NetworkBehaviour` to run
owner-only input/logic (e.g. read local input only for the object you own).
Transfer with server-side `ChangeOwnership(clientId)` (verify the exact method
name against the installed package).

## Transport & connection (UTP)

NGO talks through a `NetworkTransport`; the default is **`UnityTransport`**
(`com.unity.transport`). Add the `UnityTransport` component next to
`NetworkManager` and set the connection data (address, port, protocol). For
internet play behind NAT, Unity's **Relay** + **Lobby** services sit in front of
UTP (separate `com.unity.services.*` packages and a Unity Gaming Services
project) — out of scope for the embedded docs; consult docs-multiplayer.unity3d.com.

## Where to verify (because the local docs don't have it)

1. After install: `Library/PackageCache/com.unity.netcode.gameobjects@2.11.*/` —
   the actual C# source is the ground truth for signatures.
2. Unity's published NGO docs: docs-multiplayer.unity3d.com (NGO + Transport).
3. The embedded landing pages only confirm versions:
   `references/api/com.unity.netcode.gameobjects.md`,
   `references/api/com.unity.transport.md`.
