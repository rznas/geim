<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingMatrixParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayTracingShader | RayTracingShader to set parameter for. |
| name | Name of the variable in shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| val | Value to set. |

### Description

Adds a command to set a matrix parameter on a RayTracingShader.

Only shaders defined in the .raytrace file can access the matrix you designate as the argument for this method. To make this matrix accessible to all ray tracing shader types (closest hit, any hit, or miss, for example), call the CommandBuffer.SetGlobalMatrix method instead.
