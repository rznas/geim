<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.GetResponseHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the HTTP header to retrieve. Case-insensitive. |

### Returns

**string** The value of the HTTP header from the latest HTTP response. If no header with a matching name has been received, or no responses have been received, returns `null`.

### Description

Retrieves the value of a response header from the latest HTTP response received.

In the case that this UnityWebRequest has received multiple responses (such as during redirects), only headers from the newest (or final) response are checked.
