<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetGlobalBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |
| value | The buffer to set. |

### Description

Sets a global buffer property for all shaders.

Global properties are used if a shader needs them but the material does not have them defined (for example, if the shader does not expose them in `Properties` block).

Additional resources: SetGlobalTexture, ComputeBuffer class, GraphicsBuffer class, ShaderLab documentation.
