<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.GetRequestHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the custom request header. Case-insensitive. |

### Returns

**string** The value of the custom request header. If no custom header with a matching name has been set, returns an empty string.

### Description

Retrieves the value of a custom request header.

This method retrieves the value of custom (i.e. user-set) request headers. These are the headers which will be transmitted *to* the remote server as part of the HTTP request.

Additional resources: SetRequestHeader.
