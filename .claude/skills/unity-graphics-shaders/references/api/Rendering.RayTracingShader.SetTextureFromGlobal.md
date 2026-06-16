<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetTextureFromGlobal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the texture as given by Shader.PropertyToID. |
| name | The name of the texture to bind. |
| globalTextureName | The name of the global resource to bind to the RayTracingShader. |
| globalTextureNameID | The ID of the global resource as given by Shader.PropertyToID. |

### Description

Binds a global texture to a RayTracingShader.

The global texture must be previously set using Shader.SetGlobalTexture.
