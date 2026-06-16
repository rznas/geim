<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-request-intro.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to the Unity web request APIs

`UnityWebRequest` is Unity’s HTTP/HTTPS **networking** API for communicating with web services, transferring files, and streaming data at runtime.

Common uses for the Unity web request system include:

- Downloading content at runtime, such as:
  - AssetBundles from remote servers, when using the regular AssetBundle or [Addressables](https://docs.unity3d.com/Packages/com.unity.addressables@latest) systems.
  - Text/JSON for config, localization, and live tuning.
  - Images (as Textures) and audio (as AudioClips) for dynamic content.
  - Build-time or runtime patching via remote manifests.
- Uploading data to servers, such as:
  - Player metrics.
  - Saved game state.
  - Error/exception logs and crash reports.
  - Custom telemetry and **analytics**.
- Integrating with content delivery networks, authentication and security, payment platforms, multiplayer services, diagnostics, and remote build pipelines.
- Implementing low-traffic, networked multiplayer and turn-based games, such as chess.

## Architecture

The Unity web request system consists of two layers:

- A High-Level API (HLAPI) wraps the low-level API and provides a convenient interface for common operations.
- A Low-Level API (LLAPI) provides maximum flexibility for more advanced oeprations.

The system breaks down an HTTP transaction into the following operations:

- Sending data to the server.
- Receiving data from the server.
- HTTP flow control (for example, redirects and error handling).

Each of these operations are managed by a specific type of object, which you can use to customize and control aspects of the transaction:

- An `UploadHandler` object handles transmission of data to the server.
- A `DownloadHandler` object handles receipt, buffering, and postprocessing of data received from the server.
- A `UnityWebRequest` object manages the other two objects, and also handles HTTP flow control. This object is where custom headers and URLs are defined, and where error and redirect information is stored.

The following is a high level overview of a HTTP transaction:

- Create a `UnityWebRequest` object.
- Configure the `UnityWebRequest` object.
  - Set custom headers.
  - Set HTTP verb (such as `GET`, `POST`, `HEAD` - custom verbs are permitted on all platforms).
  - Set URL.
- (Optional) Create an upload handler and attach it to the web request.
  - Provide data to be uploaded.
  - Provide an HTTP form to be uploaded.
- (Optional) Create a download handler and attach it to the web request.
- Send the web request.
  - From a coroutine, you can `yield` the result of the `UnityWebRequest.SendRequest` call to wait for the request to complete.
- (Optional) Read received data from the download handler.
- (Optional) Read error information, HTTP status code, and response headers from the `UnityWebRequest` object.

For a detailed code example that illustrates these steps, refer to the API documentation for `UploadHandlerRaw`.

## Additional resources

- Web request high-level API reference
- Web request low-level API reference
