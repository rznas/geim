<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingTextureParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayTracingShader | RayTracingShader to set parameter for. |
| name | Name of the texture variable in shader code. |
| nameID | The ID of the property name for the texture in shader code. Use Shader.PropertyToID to get this ID. |
| rt | Texture value or identifier to set, see RenderTargetIdentifier. |

### Description

Adds a command to set a texture parameter on a RayTracingShader.

Only shaders defined in the .raytrace file can access the texture you designate as the argument for this method. To make this texture accessible to all ray tracing shader types (closest hit, any hit, or miss, for example), call the CommandBuffer.SetGlobalTexture method instead.
