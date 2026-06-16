<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerTexture.GetContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| www | A finished UnityWebRequest object with DownloadHandlerTexture attached. |

### Returns

**Texture2D** The same as DownloadHandlerTexture.texture

### Description

Returns the downloaded Texture, or `null`.

A static function provided for convenience; equivalent to ((DownloadHandlerTexture)www.downloadHandler).texture.
