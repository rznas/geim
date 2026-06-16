<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.SupportsRandomWriteOnRenderTextureFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The format to look up. |

### Returns

**bool** True if the format can be used for random access writes.

### Description

Tests if a RenderTextureFormat can be used with RenderTexture.enableRandomWrite.

Random access write might not be supported on all RenderTextureFormat as this is API/driver/hardware dependent.
