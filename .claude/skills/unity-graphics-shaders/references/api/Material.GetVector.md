<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a named vector value.

Four component vectors and colors are the same in Unity shaders. `GetVector` does exactly the same as GetColor just the input data type is different (`xyzw` in the vector becomes `rgba` in the color). The only difference is that color values are converted from sRGB to Linear value, when using linear color space (see properties in shader programs).

Additional resources: GetColor, SetVector, Shader.PropertyToID.
