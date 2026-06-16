<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.CreateWireOverlayRendererList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera that is used for rendering the WireOverlay. |

### Returns

**RendererList** Returns a new RendererList based on the settings you pass in.

### Description

Creates a new WireOverlay RendererList.

A RendererList represents a set of draw commands. To draw the WireOverlay in a RendererList, add the CommandBuffer.DrawRendererList command to a CommandBuffer.
