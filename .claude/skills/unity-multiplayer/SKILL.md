---
name: unity-multiplayer
description: >
  Add multiplayer and HTTP/REST networking to a Unity 6 (6000.x) C# game.
  Use this whenever you are building online/co-op/PvP features with Netcode for
  GameObjects (NGO) — NetworkManager, NetworkBehaviour, NetworkObject,
  NetworkVariable<T>, ServerRpc/ClientRpc, spawning, ownership, host/client/
  server start, Unity Transport (UTP), or Relay/Lobby — OR when you need plain
  HTTP from the game (download a file/texture/audio, POST JSON to a REST API,
  call a backend/leaderboard/auth endpoint) with UnityWebRequest. Reach for it
  any time the task is "add multiplayer", "sync this value across clients",
  "make this server-authoritative", "spawn a networked player", "call the server
  from the client", "host a game / join a game", "download an image at runtime",
  "POST to our API", or "hit a leaderboard endpoint". Covers Network Programmer
  work (and the Producer's networking-scope decisions). Assumes a buildable
  project (unity-project-setup). For packaging the build / dedicated-server
  exports, hand to unity-build-deploy.
---

# Unity Multiplayer & HTTP (C#)

Two very different things live under "Unity networking", and they are NOT the
same package:

1. **High-level multiplayer** — syncing GameObjects across a host/clients, RPCs,
   ownership. This is **Netcode for GameObjects (NGO)**, an add-on UPM package
   (`com.unity.netcode.gameobjects`). **It is NOT in the core engine.**
2. **HTTP/REST** — downloading files, calling a backend, leaderboards, auth.
   This is `UnityWebRequest` (`UnityEngine.Networking`), which **IS** in the
   core engine and IS in the embedded local docs.

## Honest coverage note (read this first)

- The `UnityWebRequest` / `DownloadHandler` / `UploadHandler` snippets below are
  **doc-sourced from the embedded Unity 6 ScriptReference** (`references/api/`),
  not compile-tested in this environment (no Unity Editor installed). These are
  verbatim from Unity's own examples — solid.
- **The NGO C# API is NOT in the embedded local docs.** The local
  ScriptReference's `UnityEngine.Networking.*` namespace is entirely
  `UnityWebRequest`/`DownloadHandler`/`UploadHandler` (i.e. HTTP) — there is **no
  `NetworkManager`, `NetworkBehaviour`, `NetworkObject`, `NetworkVariable`,
  `ServerRpc`, or `ClientRpc` page anywhere in `references/api/`** (confirmed by
  grep). Only the package *landing* pages exist
  (`com.unity.netcode.gameobjects.md`, `com.unity.transport.md`), which give
  version info and a one-line description, not the API. The real NGO API lives
  on Unity's published package docs site (docs-multiplayer.unity3d.com).
- Therefore the NGO snippets here are **doc-sourced from Unity's published NGO
  package docs / the known package API surface, and ESPECIALLY not
  compile-tested.** They describe the canonical model and the minimal patterns.
  **Treat exact attribute spelling / method signatures as needing verification
  against the installed package version** (this env targets NGO 2.11.x for Unity
  6000.4). When in doubt, open the actual package source under
  `Library/PackageCache/com.unity.netcode.gameobjects@*/` after install.

## The one thing that trips everyone up

**Unity ships no built-in high-level multiplayer in the core engine — you must
add the NGO package, and NGO is server-authoritative.** Three consequences that
account for most confusion:

1. **You add a package.** There is no HLAPI in core Unity anymore (the old
   UNet HLAPI was removed). Install `com.unity.netcode.gameobjects` via UPM
   (Window → Package Manager, or edit `Packages/manifest.json`) before any of
   the NGO types resolve. `using Unity.Netcode;` only compiles after that.
2. **The server is the authority.** Decide host/client/server, then:
   - **`[ServerRpc]`** = a method a *client* calls that *runs on the server*.
   - **`[ClientRpc]`** = a method the *server* calls that *runs on clients*.
   - **`NetworkVariable<T>`** = state the **server writes** and **everyone reads**
     (by default). Clients can't write server-owned NetworkVariables — that's a
     deliberate write-permission check, not a bug.
3. **Nothing syncs until it's spawned.** A GameObject only replicates if it has a
   `NetworkObject` component AND was spawned via the network (`.Spawn()` on the
   server / placed in-scene as a networked object). A plain `Instantiate` is
   local-only and invisible to other peers.

## The minimal NetworkBehaviour pattern (NGO — doc-sourced, NOT compile-tested)

The canonical "a value the server owns + a client-to-server call" shape. Requires
the `com.unity.netcode.gameobjects` package and a `NetworkObject` on the same
GameObject. `scripts/new_network_behaviour.sh` scaffolds exactly this.

```csharp
using Unity.Netcode;            // only resolves after the NGO package is added
using UnityEngine;

// Attach to a GameObject that ALSO has a NetworkObject component,
// and register the prefab with NetworkManager so it can be spawned.
public class Health : NetworkBehaviour
{
    // Server writes, everyone reads (default permissions).
    public NetworkVariable<int> CurrentHealth =
        new NetworkVariable<int>(100);

    public override void OnNetworkSpawn()
    {
        // Runs on every peer once this object is network-spawned.
        // React to changes; OnValueChanged fires on all readers.
        CurrentHealth.OnValueChanged += (oldValue, newValue) =>
            Debug.Log($"health: {oldValue} -> {newValue}");
    }

    // A CLIENT calls this; the body executes on the SERVER.
    // Method name MUST end in "ServerRpc" for the attribute to bind.
    [ServerRpc]
    public void TakeDamageServerRpc(int amount)
    {
        // Only the server reaches here -> safe to mutate authoritative state.
        CurrentHealth.Value -= amount;   // legal: this is the server writing
    }

    // The SERVER calls this; the body executes on every CLIENT.
    // Method name MUST end in "ClientRpc".
    [ClientRpc]
    public void PlayHitFxClientRpc()
    {
        // cosmetic-only, runs on clients
    }
}
```

Start a session with `NetworkManager.Singleton.StartHost()` /
`StartServer()` / `StartClient()`. The full model — NetworkManager, transport
config, ownership, spawning, connection callbacks — is in
`references/netcode_for_gameobjects.md` (same package-doc-sourced caveat).

## HTTP / REST with UnityWebRequest (grounded in `references/api/`)

This part **is** in the local docs. `UnityWebRequest` is the standard way to talk
to a backend, leaderboard, or asset server. It runs as a coroutine: build the
request, `yield return req.SendWebRequest()`, then check `req.result`.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;

public class Example : MonoBehaviour
{
    void Start() => StartCoroutine(GetRequest("https://www.example.com"));

    IEnumerator GetRequest(string uri)
    {
        using (UnityWebRequest req = UnityWebRequest.Get(uri))
        {
            yield return req.SendWebRequest();

            switch (req.result)
            {
                case UnityWebRequest.Result.ConnectionError:
                case UnityWebRequest.Result.DataProcessingError:
                    Debug.LogError("Error: " + req.error);
                    break;
                case UnityWebRequest.Result.ProtocolError:
                    Debug.LogError("HTTP Error: " + req.error);
                    break;
                case UnityWebRequest.Result.Success:
                    Debug.Log("Received: " + req.downloadHandler.text);
                    break;
            }
        }
    }
}
```

POST JSON to a REST API (verbatim shape from the Unity docs):

```csharp
using (UnityWebRequest www = UnityWebRequest.Post(
        "https://www.my-server.com/myapi",
        "{ \"field1\": 1, \"field2\": 2 }",
        "application/json"))
{
    yield return www.SendWebRequest();
    if (www.result != UnityWebRequest.Result.Success)
        Debug.LogError(www.error);
    else
        Debug.Log("upload complete");
}
```

`result`, `responseCode`, `error`, `downloadHandler.text/.data`,
`SetRequestHeader`, `UnityWebRequestTexture.GetTexture` for images,
`UnityWebRequestMultimedia.GetAudioClip` for audio, and the POST/PUT/form
variants are all in `references/unitywebrequest.md` — each grounded in a specific
`references/api/Networking.*.md` page.

## What this covers / hands off to

- **Covers:** Network Programmer (multiplayer + online features) and the
  Producer's "how much networking scope?" call. NGO model + minimal patterns;
  HTTP/REST via UnityWebRequest.
- **Build / packaging / dedicated-server export →** `unity-build-deploy`.
- **Gameplay logic the RPCs drive →** `unity-gameplay-csharp`.
- **Physics/movement you may want server-authoritative →** `unity-physics-and-ai`.
- **Verifying behavior headlessly →** `unity-qa-testing`.

Unity 6 / 6000.x. Snippets are doc-sourced: UnityWebRequest from the embedded
ScriptReference (`references/api/`), NGO from Unity's published package docs.
**Neither is compile-tested in this environment (no Editor installed), and the
NGO API in particular is not in the local docs — verify it against the installed
package.** Depth and troubleshooting in `references/`.
