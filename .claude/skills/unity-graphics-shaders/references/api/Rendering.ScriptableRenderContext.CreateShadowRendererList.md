<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.CreateShadowRendererList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | The settings used to derive the set of GameObjects the RendererList contains when drawing shadows. |

### Returns

**RendererList** Returns a new RendererList based on the settings you pass in.

### Description

Creates a new shadow RendererList.

A RendererList represents a set of visible GameObjects. To draw the GameObjects in a RendererList, add the CommandBuffer.DrawRendererList command to a CommandBuffer.
