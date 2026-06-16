<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.UnityWebRequestModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The UnityWebRequest module lets you communicate with http services.

### Classes

| Class | Description |
| --- | --- |
| CertificateHandler | Responsible for rejecting or accepting certificates received on https requests. |
| DownloadHandler | Manage and process HTTP response body data received from a remote server. |
| DownloadHandlerBuffer | A general-purpose DownloadHandler implementation which stores received data in a native byte buffer. |
| DownloadHandlerFile | Download handler for saving the downloaded data to file. |
| DownloadHandlerScript | An abstract base class for custom, scriptable DownloadHandler implementations. |
| MultipartFormDataSection | A helper object for form sections containing generic, non-file data. |
| MultipartFormFileSection | A helper object for adding file uploads to multipart forms via the [IMultipartFormSection] API. |
| UnityWebRequest | Provides methods to communicate with web servers. |
| UnityWebRequestAsyncOperation | Asynchronous operation object returned from UnityWebRequest.SendWebRequest().You can yield until it continues, register an event handler with AsyncOperation.completed, or manually check whether it's done (AsyncOperation.isDone) or progress (AsyncOperation.progress). |
| UploadHandler | Helper object for UnityWebRequests. Manages the buffering and transmission of body data during HTTP requests. |
| UploadHandlerFile | A specialized UploadHandler that reads data from a given file and sends raw bytes to the server as the request body. |
| UploadHandlerRaw | A general-purpose UploadHandler subclass, using a native-code memory buffer. |
| WWWForm | Helper class to generate form data to post to web servers using the UnityWebRequest or WWW classes. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| HttpForcedVersion | The version of HTTP to force when using UnityWebRequest. |
