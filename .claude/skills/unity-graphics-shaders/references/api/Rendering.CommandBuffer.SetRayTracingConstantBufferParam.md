<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingConstantBufferParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayTracingShader | The RayTracingShader to set parameter for. |
| nameID | The ID of the property name for the constant buffer in shader code. Use Shader.PropertyToID to get this ID. |
| name | The name of the constant buffer in shader code. |
| buffer | The buffer to bind as constant buffer. |
| offset | The offset in bytes from the beginning of the buffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |

### Description

Adds a command to set a constant buffer on a RayTracingShader.

Only shaders defined in the .raytrace file can access the constant buffer you designate as the argument for this method. To make this constant buffer accessible to all ray tracing shader types (closest hit, any hit, or miss, for example), call the CommandBuffer.SetGlobalConstantBuffer method instead.

See RayTracingShader.SetConstantBuffer for usage.
