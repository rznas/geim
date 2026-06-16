<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-request-hlapi.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Web request high-level API reference

You can use the high-level API to send simple web requests to backends with common HTTP verbs such as `GET`, `POST`, `PUT`. The following table lists some of the common operations supported by the high-level API. Refer to the linked API documentation for details and example usage for each operation:

| **Method** | **Description** |
| --- | --- |
| `UnityWebRequest.Get` | Retrieve text or binary data from an HTTP Server (`GET`) |
| `UnityWebRequest.Post` | Send a form to an HTTP server (`POST`). Overloads are available that support form data submission in both the legacy `WWWForm` and the recommended `IMultipartFormSection` formats. |
| `UnityWebRequest.Put` | Upload raw data to an HTTP server (`PUT`) |
| `UnityWebRequestTexture.GetTexture` | Use a specialized type of web request optimized for downloading Unity `Texture` images from an HTTP server (`GET`) |
| `UnityWebRequestAssetBundle.GetAssetBundle` | Use a specialized type of web request optimized for downloading Unity `AssetBundle` objects from an HTTP server (`GET`). |

These high-level requests automatically attach the appropriate upload or download handlers to the underlying `UnityWebRequest`. These handlers provide the opportunity for customizing data before sending it and processing data after receiving it. For more information on upload and download handlers, refer to the low-level API reference.

## Additional resources

- Web request low-level API reference
- `UnityWebRequest` class
