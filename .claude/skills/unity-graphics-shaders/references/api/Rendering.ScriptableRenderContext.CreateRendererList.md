<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.CreateRendererList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| desc | A high level descriptor that represents the set of GameObjects the RendererList contains. |
| param | The parameters used to derive the set of GameObjects the RendererList contains. |

### Returns

**RendererList** Returns a new RendererList based on the descriptor or parameters you pass in.

### Description

Creates a new renderers RendererList.

A RendererList represents a set of visible GameObjects. To draw the GameObjects in a RendererList, add the CommandBuffer.DrawRendererList command to a CommandBuffer.
