<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingIntParams.html
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

Adds a command to set multiple consecutive integer parameters on a RayTracingShader.

The values specified as argument can be used only by the shaders defined inside the .raytrace file associated with the RayTracingShader.

This function can be used to set an integer vector, integer array or integer vector array values. For example, `int4 myArray[2]` in the ray tracing shader can be filled by passing 8 integers.
