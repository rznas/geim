<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingBufferParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayTracingShader | The RayTracingShader to set parameter for. |
| name | The name of the buffer in shader code. |
| nameID | The ID of the property name for the buffer in shader code. Use Shader.PropertyToID to get this ID. |
| buffer | The buffer to set. |
| bufferHandle | The handle of the buffer to set. |

### Description

Adds a command to set an input or output buffer parameter on a RayTracingShader.

Only shaders defined in the .raytrace file can access the buffer you designate as the argument for this method. To make this buffer accessible to all ray tracing shader types (closest hit, any hit, or miss, for example), call the CommandBuffer.SetGlobalBuffer or Shader.SetGlobalBuffer method instead.

Additional resources: DispatchRays.
