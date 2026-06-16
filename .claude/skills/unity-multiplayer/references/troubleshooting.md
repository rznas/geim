# Troubleshooting — Unity multiplayer & HTTP

The handful of failures that account for most lost time. NGO items are
package-doc-sourced (the NGO API is not in the embedded local docs — see
`netcode_for_gameobjects.md`); UnityWebRequest items are grounded in
`references/api/`.

## NGO

### "The type or namespace `Netcode` / `NetworkBehaviour` could not be found"
**The package isn't installed.** Unity core has no high-level multiplayer; you
must add `com.unity.netcode.gameobjects` (UPM). Install via Package Manager, or
add `"com.unity.netcode.gameobjects": "2.11.2"` to `Packages/manifest.json`,
then let it restore. `using Unity.Netcode;` only resolves afterward. (Same goes
for `Unity.Netcode.Transports.UTP` — comes with Unity Transport, a dependency.)

### Nothing syncs — the object exists on one peer only
The object isn't network-spawned.
1. It needs a **`NetworkObject`** component. No NetworkObject = local-only,
   period.
2. It must be **spawned through the network**: the **server** does
   `Instantiate(prefab)` then `GetComponent<NetworkObject>().Spawn()`, OR the
   prefab is placed in-scene as a networked object. A plain client-side
   `Instantiate` is invisible to other peers.
3. The prefab must be **registered with `NetworkManager`** (its NetworkPrefabs
   list). An unregistered prefab can't be spawned across the wire.

### An RPC "does nothing" / isn't received
- **Naming suffix is mandatory.** `[ServerRpc]` methods must end in `ServerRpc`;
  `[ClientRpc]` in `ClientRpc`. Wrong suffix ⇒ NGO never generates the dispatch
  and the call silently no-ops.
- **Direction is fixed.** `[ServerRpc]` = client→server (runs on server).
  `[ClientRpc]` = server→clients (runs on clients). Calling a `[ClientRpc]` from
  a client, or a `[ServerRpc]` from the server, is wrong-way.
- **Ownership.** A `[ServerRpc]` is, by default, only invokable by the **owner**
  of the NetworkObject. If a non-owner must call it, use
  `[ServerRpc(RequireOwnership = false)]`.
- **Parameters must be serializable** (numerics, `bool`, `Vector3`,
  `FixedString*`, `INetworkSerializable`/unmanaged structs). A non-serializable
  arg breaks the call.
- Calls only flow once the session is started and the object is spawned — calling
  an RPC before `OnNetworkSpawn` is too early.

### "NetworkVariable write denied" / a client's write does nothing
`NetworkVariable<T>` default permissions are **read = Everyone, write = Server**.
A client cannot write a server-owned variable — that's a deliberate authority
check. Either: (a) mutate it on the server (guard with `if (IsServer)`), and have
clients request changes via a `[ServerRpc]`; or (b) if a client genuinely owns
the value, construct it with `NetworkVariableWritePermission.Owner` and write
only from the owner (`IsOwner`).

### Can't connect / "transport failure" / wrong side runs logic
- Add the **`UnityTransport`** component next to `NetworkManager` and set the
  connection data (address + port). Default port issues and binding to the wrong
  address are the usual cause.
- Host vs client: exactly one process calls `StartHost()`/`StartServer()`;
  others call `StartClient()` pointed at that address. Branch authoritative code
  on `IsServer`/`IsHost`, and owner-only input on `IsOwner` — running server
  logic on a client (or vice versa) looks like "it works in the editor host but
  not as a real client."
- Internet play behind NAT generally needs Unity **Relay + Lobby** (separate
  `com.unity.services.*` packages, a UGS project) in front of UTP — direct
  IP only works on LAN / with port forwarding.

### Where to verify NGO signatures
The local docs don't have the NGO API. After install, the ground truth is the
package source under `Library/PackageCache/com.unity.netcode.gameobjects@2.11.*/`,
or Unity's docs at docs-multiplayer.unity3d.com. NGO 2.x also offers a unified
`[Rpc(SendTo.Server)]` attribute alongside `ServerRpc`/`ClientRpc` — check which
your version expects.

## UnityWebRequest (HTTP)

### A 404/500 isn't caught by my error check
Check `req.result`, not just `req.isDone`. An HTTP error response is
`UnityWebRequest.Result.ProtocolError` (with the status in `responseCode`), while
a failure to reach the server is `ConnectionError`. Switching only on success vs
`isDone` misses protocol errors. (Source:
`references/api/Networking.UnityWebRequest.Result.*.md`.)

### "Cannot modify request after it has been sent"
`SendWebRequest` can be called once, and properties freeze after it
(`Networking.UnityWebRequest.SendWebRequest.md`). Set every header
(`SetRequestHeader`), the timeout, and any handlers **before** sending. Build a
fresh `UnityWebRequest` per attempt — you can't reuse/resend one.

### Request never completes / blocks the game
`SendWebRequest` is async and must be **yielded in a coroutine** (`yield return
req.SendWebRequest();`) or awaited via the async-operation; you cannot block on
it synchronously on the main thread. If it hangs, set `req.timeout` (seconds) so
it aborts instead of waiting forever.

### Downloaded text/data is empty
Read from the **download handler**: `req.downloadHandler.text` (string) or
`.data` (`byte[]`). `Get`/`Post` attach a `DownloadHandlerBuffer` automatically;
for images use `UnityWebRequestTexture.GetTexture` +
`DownloadHandlerTexture.GetContent(req)`, for audio
`UnityWebRequestMultimedia.GetAudioClip`. (Sources:
`Networking.DownloadHandlerBuffer.md`, `Networking.UnityWebRequestTexture.GetTexture.md`.)

### POST body / Content-Type is wrong
Pick the matching `UnityWebRequest.Post` overload: raw string + explicit
`contentType` (e.g. `"application/json"`) for JSON bodies; a
`Dictionary<string,string>` for `application/x-www-form-urlencoded`; a `WWWForm`
or `List<IMultipartFormSection>` for `multipart/form-data`. The wrong overload
sends the wrong Content-Type and the server rejects it.
(Source: `Networking.UnityWebRequest.Post.md`.)

### HTTPS to a dev server fails on the certificate
By default certificates are validated against the system root store
(`Networking.UnityWebRequest.md`). For a self-signed dev server only, assign a
custom `certificateHandler`. Never ship a handler that blindly accepts all
certs.

### Memory leak / "handler not disposed"
Wrap the request in `using (...)` or call `Dispose()`. The
`disposeDownloadHandlerOnDispose` / `disposeUploadHandlerOnDispose` /
`disposeCertificateHandlerOnDispose` flags control whether attached handlers are
cleaned up with the request (`Networking.UnityWebRequest.md`).
