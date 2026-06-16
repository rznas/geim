<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the buffer name in shader code. Use Shader.PropertyToID to get this ID. |
| name | The name of the buffer in shader code. |
| buffer | The buffer to bind. |
| bufferHandle | The handle of the buffer to bind. |

### Description

Binds an input or output compute buffer.

Only shaders defined in the .raytrace file can access the buffer you designate as the argument for this method. To make this buffer accessible to all ray tracing shader types (closest hit, any hit, miss, etc.), call the Shader.SetGlobalBuffer method instead.
