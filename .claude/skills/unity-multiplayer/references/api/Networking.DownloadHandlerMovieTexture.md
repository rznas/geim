<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerMovieTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

MovieTexture has been removed. Use VideoPlayer instead.

A specialized DownloadHandler for creating MovieTexture out of downloaded bytes. This class is only available on platforms that support MovieTexture.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| data | Returns the raw bytes downloaded from the remote server, or null. (Read Only) |
| error | Error message describing a failure that occurred inside the download handler. |
| isDone | Returns true if this DownloadHandler has been informed by its parent UnityWebRequest that all data has been received, and this DownloadHandler has completed any necessary post-download processing. (Read Only) |
| nativeData | Provides direct access to downloaded data. |
| text | Convenience property. Returns the bytes from data interpreted as a UTF8 string. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this DownloadHandler is no longer being used, and should clean up any resources it is using. |

### Protected Methods

| Method | Description |
| --- | --- |
| CompleteContent | Callback, invoked when all data has been received from the remote server. |
| GetData | Callback, invoked when the data property is accessed. |
| GetNativeData | Provides allocation-free access to the downloaded data as a NativeArray. |
| GetProgress | Callback, invoked when UnityWebRequest.downloadProgress is accessed. |
| GetText | Callback, invoked when the text property is accessed. |
| ReceiveContentLengthHeader | Callback, invoked with a Content-Length header is received. |
| ReceiveData | Callback, invoked as data is received from the remote server. |
