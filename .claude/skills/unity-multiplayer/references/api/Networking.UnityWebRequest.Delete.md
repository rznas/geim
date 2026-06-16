<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Delete.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI to which a `DELETE` request should be sent. |

### Returns

**UnityWebRequest** A UnityWebRequest configured to send an HTTP `DELETE` request.

### Description

Creates a UnityWebRequest configured for HTTP `DELETE`.

This method creates a UnityWebRequest, sets the verb to `DELETE` and sets the target URL to the string argument `uri`. It sets no custom flags or headers.

This method attaches no DownloadHandler or UploadHandler to the UnityWebRequest.
