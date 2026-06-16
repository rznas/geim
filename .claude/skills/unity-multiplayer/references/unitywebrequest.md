# UnityWebRequest — HTTP / REST (grounded in `references/api/`)

This is the part of the skill that **is** in the embedded local docs. Every
snippet/signature below is grounded in a specific
`references/api/Networking.*.md` page (Unity 6 ScriptReference, doc-sourced, not
compile-tested — no Editor here). `UnityWebRequest` lives in
`UnityEngine.Networking`.

## The shape of every request

`UnityWebRequest` "handles the flow of HTTP communication with web servers"
(`Networking.UnityWebRequest.md`). The pattern is always:

1. Build a request via a static helper (`Get`, `Post`, `Put`, `Delete`, `Head`)
   or `new UnityWebRequest(...)`.
2. `yield return req.SendWebRequest();` inside a coroutine — this returns a
   `UnityWebRequestAsyncOperation`; yielding it pauses the coroutine until the
   request "encounters a system error or finishes communicating"
   (`Networking.UnityWebRequest.SendWebRequest.md`).
3. Inspect `req.result`, then read `req.downloadHandler.text` / `.data`.
4. Dispose (a `using` block, or `req.Dispose()`).

> `SendWebRequest` can only be called **once** per request, and once called you
> "cannot change any of the UnityWebRequest's properties"
> (`Networking.UnityWebRequest.SendWebRequest.md`). Configure everything (headers,
> handlers, timeout) *before* sending.

## GET — fetch text/binary

Source: `references/api/Networking.UnityWebRequest.Get.md` (Unity's own example,
verbatim).

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;

public class Example : MonoBehaviour
{
    void Start() => StartCoroutine(GetRequest("https://www.example.com"));

    IEnumerator GetRequest(string uri)
    {
        using (UnityWebRequest webRequest = UnityWebRequest.Get(uri))
        {
            yield return webRequest.SendWebRequest();

            switch (webRequest.result)
            {
                case UnityWebRequest.Result.ConnectionError:
                case UnityWebRequest.Result.DataProcessingError:
                    Debug.LogError("Error: " + webRequest.error);
                    break;
                case UnityWebRequest.Result.ProtocolError:
                    Debug.LogError("HTTP Error: " + webRequest.error);
                    break;
                case UnityWebRequest.Result.Success:
                    Debug.Log("Received: " + webRequest.downloadHandler.text);
                    break;
            }
        }
    }
}
```

`UnityWebRequest.Get` attaches a `DownloadHandlerBuffer` automatically and sets
no upload handler (`Networking.UnityWebRequest.Get.md`). HTTPS certificates are
validated against the system root store; override via the `certificateHandler`
property if you must (e.g. a dev server with a self-signed cert)
(`Networking.UnityWebRequest.md`).

## POST — send data to a REST API

`UnityWebRequest.Post` has several overloads (source:
`references/api/Networking.UnityWebRequest.Post.md`). The Content-Type matters.

**Raw string body (JSON):**

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
        Debug.Log("Form upload complete!");
}
```

The string body "will be interpreted into a byte stream via
System.Text.Encoding.UTF8 ... stored in an UploadHandlerRaw"
(`Networking.UnityWebRequest.Post.md`). All POST overloads attach a
`DownloadHandlerBuffer` so you can read the reply — Unity notes this is "for
convenience ... particularly in the case of REST APIs."

**Form fields (`Dictionary<string,string>`)** → `application/x-www-form-urlencoded`:

```csharp
Dictionary<string, string> form = new();
form["myField"] = "myData";
using UnityWebRequest www = UnityWebRequest.Post("https://httpbin.org/post", form);
yield return www.SendWebRequest();
```

**`WWWForm`** (fields + files) and **`List<IMultipartFormSection>`**
(`multipart/form-data`, with an optional custom boundary) overloads also exist —
both verbatim in `Networking.UnityWebRequest.Post.md`. Note: `PostWwwForm`
(`Networking.UnityWebRequest.PostWwwForm.md`) is a related helper.

## Headers, method, timeout

(Source: `references/api/Networking.UnityWebRequest.md` property/method tables +
`Networking.UnityWebRequest.SetRequestHeader.md`.)

```csharp
var req = UnityWebRequest.Get(url);
req.SetRequestHeader("Authorization", "Bearer " + token);  // set BEFORE sending
req.timeout = 10;                                           // seconds; aborts if no response
yield return req.SendWebRequest();
long code = req.responseCode;                              // 200 / 404 / 500 ...
```

Key members on `UnityWebRequest`:

| Member | Use |
| --- | --- |
| `result` | `UnityWebRequest.Result` enum — branch on it (see below). |
| `responseCode` | numeric HTTP code, read-only. |
| `error` | human-readable error string, null if none. |
| `downloadHandler` | `.text` (string) and `.data` (`byte[]`) of the response body. |
| `uploadHandler` | the body being uploaded (`UploadHandlerRaw` for POST/PUT). |
| `method`, `url`, `uri`, `timeout`, `redirectLimit` | request config (set before send). |
| `SetRequestHeader` / `GetResponseHeader` / `GetResponseHeaders` | header access. |
| `downloadProgress` / `uploadProgress` | 0.0–1.0, read-only, poll while in flight. |
| `Abort()` / `Dispose()` | halt / clean up. |

## The `Result` enum — how to know what happened

Source: `references/api/Networking.UnityWebRequest.Result.*.md`.

| Value | Meaning |
| --- | --- |
| `InProgress` | still running. |
| `Success` | finished, no error. |
| `ConnectionError` | failed to communicate (DNS/socket/etc.). |
| `ProtocolError` | got an HTTP error response (4xx/5xx). |
| `DataProcessingError` | response received but a download handler failed to process it. |

Always switch on `result` (not just `isDone`) — a 404 is `ProtocolError`, not a
connection failure, and your code usually wants to handle those differently.

## Download handlers — what comes back

(Source: the `Networking.DownloadHandler*.md` pages.)

- **`DownloadHandlerBuffer`** — default for `Get`/`Post`; buffers the body.
  `.text` / `.data` give the result (`Networking.DownloadHandlerBuffer.md`).
- **`DownloadHandlerTexture`** — for images; use the optimized helper below.
- **`DownloadHandlerAudioClip`** — for audio; see `UnityWebRequestMultimedia`.
- **`DownloadHandlerFile`** — streams the body straight to disk (big downloads).
- **`DownloadHandlerAssetBundle`** — for AssetBundles.

## Download a texture (optimized)

Don't `Get` the bytes and build a `Texture2D` by hand — use
`UnityWebRequestTexture.GetTexture`, which attaches a `DownloadHandlerTexture`
and converts on a worker thread (source:
`references/api/Networking.UnityWebRequestTexture.GetTexture.md`):

```csharp
using (UnityWebRequest uwr = UnityWebRequestTexture.GetTexture(
        "https://www.my-server.com/myimage.png"))
{
    yield return uwr.SendWebRequest();
    if (uwr.result != UnityWebRequest.Result.Success)
        Debug.Log(uwr.error);
    else
        Texture2D texture = DownloadHandlerTexture.GetContent(uwr);
}
```

Only JPG and PNG are supported. A `nonReadable` / `DownloadedTextureParams`
overload lets you skip mipmaps, set linear color space, and keep the texture
non-readable to save memory.

## Download audio

`UnityWebRequestMultimedia.GetAudioClip(uri, audioType)` returns a request whose
`DownloadHandlerAudioClip` yields an `AudioClip`
(`references/api/Networking.UnityWebRequestMultimedia.GetAudioClip.md`).

## Other verbs

`UnityWebRequest.Put` (raw upload), `UnityWebRequest.Delete`,
`UnityWebRequest.Head`, plus URL helpers `EscapeURL` / `UnEscapeURL` and the
`kHttpVerb*` constants — all listed in `references/api/Networking.UnityWebRequest.md`,
each with its own `Networking.UnityWebRequest.*.md` page.

## Notes that bite people

- **It's a coroutine** (or an `await` on the async op via an extension) — you
  cannot block on it synchronously on the main thread.
- **Set headers/handlers before `SendWebRequest`**; properties freeze after.
- **`using` it** (or `Dispose()`); the dispose-on-dispose flags
  (`disposeDownloadHandlerOnDispose`, etc.) control whether the attached
  handlers are cleaned up with the request.
- **HTTPS by default validates certs** against the system store; only override
  `certificateHandler` for dev (`Networking.UnityWebRequest.md`).
