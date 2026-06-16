<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UploadHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper object for UnityWebRequests. Manages the buffering and transmission of body data during HTTP requests.

When attached to a UnityWebRequest, an UploadHandler object handles all information regarding the buffering and transmission of body data during an HTTP request. By placing data in an UploadHandler and attaching it to a UnityWebRequest, the UnityWebRequest is implicitly instructed to transmit the UploadHandler's data to the remote server. The data will always be delivered as HTTP request body data.

UploadHandler is a base class and cannot be directly instantiated. Currently, two types of UploadHandlers are available: UploadHandlerRaw and UploadHandlerFile.

Additional resources: UnityWebRequest, UploadHandlerRaw, UploadHandlerFile.

### Properties

| Property | Description |
| --- | --- |
| contentType | Determines the default Content-Type header which will be transmitted with the outbound HTTP request. |
| data | The raw data which will be transmitted to the remote server as body data. (Read Only) |
| progress | Returns the proportion of data uploaded to the remote server compared to the total amount of data to upload. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this UploadHandler is no longer being used, and should clean up any resources it is using. |
