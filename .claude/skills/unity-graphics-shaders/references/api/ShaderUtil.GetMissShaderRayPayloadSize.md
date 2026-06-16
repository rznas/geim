<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.GetMissShaderRayPayloadSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| s | The RayTracingShader instance. |
| shaderIndex | The miss Shader index for which to retrieve the ray payload size. |

### Returns

**int** The ray payload size in bytes.

### Description

Returns the ray payload size of a user-defined miss Shader from within a RayTracingShader.

Additional resources: ShaderUtil.GetMissShaderCount, ShaderUtil.GetMissShaderName.
