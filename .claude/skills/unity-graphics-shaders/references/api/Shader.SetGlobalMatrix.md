<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetGlobalMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Sets a global matrix property for all shaders.

Global properties are used if a shader needs them but the material does not have them defined (for example, if the shader does not expose them in `Properties` block).

Additional resources: SetGlobalColor, SetGlobalFloat; Material class, ShaderLab documentation.
