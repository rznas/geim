<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.GetGlobalColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Gets a global color property for all shaders previously set using SetGlobalColor.

It is only an alias to GetGlobalVector that the vector value is cast to color. No sRGB-linear conversion is done during the function call.

Additional resources: GetGlobalVector.
