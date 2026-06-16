<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the resource as given by Shader.PropertyToID. |
| name | The name of the texture being set. |
| texture | The texture to bind. |

### Description

Binds a texture resource. This can be a input or an output texture (UAV).

Only shaders defined in the .raytrace file can access the texture you designate as the argument for this method. To make this texture accessible to all ray tracing shader types (closest hit, any hit, miss, etc.), call the Shader.SetGlobalTexture method instead.
