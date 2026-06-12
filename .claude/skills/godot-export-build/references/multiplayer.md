# Godot high-level multiplayer in C# (4.6)

Verified against the `high_level_multiplayer` doc. Godot's high-level API:
`MultiplayerPeer` (transport) + `MultiplayerAPI` (`Multiplayer` on each node) +
`[Rpc]` methods + replication nodes. ENet is the default transport.

## Start a server / client

```csharp
const int Port = 7777;

private void HostServer(int maxClients = 8)
{
    var peer = new ENetMultiplayerPeer();
    peer.CreateServer(Port, maxClients);
    Multiplayer.MultiplayerPeer = peer;
}

private void JoinServer(string ip)
{
    var peer = new ENetMultiplayerPeer();
    peer.CreateClient(ip, Port);
    Multiplayer.MultiplayerPeer = peer;
}

private void GoOffline() => Multiplayer.MultiplayerPeer = null;
```

`Multiplayer.IsServer()` tells which side you're on. Connection lifecycle via
`MultiplayerAPI` signals: `PeerConnected`, `PeerDisconnected`,
`ConnectedToServer`, `ConnectionFailed`, `ServerDisconnected`.

```csharp
Multiplayer.PeerConnected += id => GD.Print($"peer {id} joined");
```

## RPCs

Mark a method `[Rpc]` to allow remote calls. Call it with `Rpc(MethodName.X, args)`:

```csharp
public override void _Ready()
{
    if (Multiplayer.IsServer())
        Rpc(MethodName.AnnounceToAll, "game started");
}

[Rpc]
private void AnnounceToAll(string msg) => GD.Print(msg);
```

The full attribute with defaults (this is what bare `[Rpc]` means):

```csharp
[Rpc(MultiplayerApi.RpcMode.Authority,
     CallLocal = false,
     TransferMode = MultiplayerPeer.TransferModeEnum.Reliable,
     TransferChannel = 0)]
private void DoThing() { }
```

- **`RpcMode.Authority`** — only the authority (server by default) may call it.
  Use **`AnyPeer`** to let clients call (e.g. sending input to the server).
- **`CallLocal = true`** — also run on the caller (common for movement so the
  host sees its own action).
- **`TransferModeEnum`** — `Reliable` (ordered, guaranteed), `Unreliable`
  (fast, droppable — position updates), `UnreliableOrdered`.

Critical rules from the docs:
- **Sender and receiver must share the exact same `NodePath`** (same node name &
  tree position). When spawning nodes that RPC, `AddChild(node, forceReadableName: true)`.
- **All `[Rpc]` methods must exist with matching signatures on both sides** —
  the checksum covers *all* RPCs in the script, even unused ones. A mismatch
  errors, sometimes pointing at the wrong function.
- RPCs don't serialize `GodotObject`s or `Callable`s — send plain data.

## Replication nodes (less manual RPC)

- **`MultiplayerSpawner`** — auto-spawns/despawns instances of registered scenes
  on clients when the authority adds them. Set its spawn path + spawnable scenes.
- **`MultiplayerSynchronizer`** — auto-replicates configured properties of a node
  from authority to peers (position, health). Configure a replication config of
  which properties sync and how often. This removes most hand-written sync RPCs.

Per-node authority: `node.SetMultiplayerAuthority(peerId)` makes that peer the
owner (e.g. each player authoritative over their own character).

## Dedicated server build

No special server binary since Godot 4.0 — a normal desktop **export template**
run with `--headless` (Dummy audio, headless display) is the server. Gate
client-only code with `if (!Multiplayer.IsServer())`, and detect server mode
(e.g. a `--server` user arg via `OS.GetCmdlineUserArgs()`) to auto-host on
launch. Export a dedicated-server preset with the export filter set to exclude
client-only assets to shrink it.

## Testing multiplayer headlessly

Run two headless instances (one server, one client) from a script or two
processes, drive a handshake, and assert both reach a connected state — fits the
`godot-qa-headless` runner pattern. Use loopback `127.0.0.1`.
