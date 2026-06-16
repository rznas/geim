<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingFloatParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayTracingShader | RayTracingShader to set parameter for. |
| name | Name of the variable in shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| values | Values to set. |

### Description

Adds a command to set multiple consecutive float parameters on a RayTracingShader.

Only shaders defined in the .raytrace file can access the float array values you designate as the argument for this method. To make these float array values accessible to all ray tracing shader types (closest hit, any hit, or miss, for example), call the CommandBuffer.SetGlobalFloatArray method instead.

This function can be used to set float vector, float array or float vector array values. For example, `float4 myArray[4]` in the ray tracing shader can be filled by passing 16 floats.
