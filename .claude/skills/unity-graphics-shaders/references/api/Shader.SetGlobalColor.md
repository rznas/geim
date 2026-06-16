<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetGlobalColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Sets a global color property for all shaders.

Global properties are used if a shader needs them but the material does not have them defined (for example, if the shader does not expose them in `Properties` block).

Usually this is used if you have a set of custom shaders that all use the same "global" color (for example, color of the sun). Then you can set the global property from script and don't have to setup the same color in all materials.

Note that unlike Material.SetColor, this function doesn't do color space conversion. It is just an alias to SetGlobalVector.

Additional resources: SetGlobalFloat, SetGlobalVector, SetGlobalTexture; Material class, ShaderLab documentation.
