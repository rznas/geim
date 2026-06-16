<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerBuffer.GetContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| www | A finished UnityWebRequest object with DownloadHandlerBuffer attached. |

### Returns

**string** The same as DownloadHandlerBuffer.text

### Description

Returns a copy of the native-memory buffer interpreted as a UTF8 string.

A static function provided for convenience; equivalent to ((DownloadHandlerBuffer)www.downloadHandler).text.
