<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.CreateSkyboxRendererList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera that is used for rendering the skybox. |
| projectionMatrix | The projection matrix used during XR rendering of the skybox. |
| viewMatrix | The view matrix used during XR rendering of the skybox. |
| projectionMatrixL | The left eye projection matrix used during Legacy single pass XR rendering of the skybox. |
| viewMatrixL | The left eye view matrix used during Legacy single pass XR rendering of the skybox. |
| projectionMatrixR | The right eye projection matrix used during Legacy single pass XR rendering of the skybox. |
| viewMatrixR | The right eye view matrix used during Legacy single pass XR rendering of the skybox. |

### Returns

**RendererList** Returns a new RendererList based on the settings you pass in.

### Description

Creates a new skybox RendererList.

A RendererList represents a set of draw commands. To draw the skybox in a RendererList, add the CommandBuffer.DrawRendererList command to a CommandBuffer.
