<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Head.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI to which to send a HTTP `HEAD` request. |

### Returns

**UnityWebRequest** A UnityWebRequest configured to transmit a HTTP `HEAD` request.

### Description

Creates a UnityWebRequest configured to send a HTTP `HEAD` request.

This method creates a UnityWebRequest, sets the verb to `HEAD` and sets the target URL to the string argument `uri`. It sets no custom flags or headers.

This method attaches no DownloadHandler or UploadHandler to the UnityWebRequest.
