<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.CreateGizmoRendererList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera that is used for rendering the Gizmo. |
| gizmoSubset | Specify how gizmos should be rendered. |

### Returns

**RendererList** Returns a new RendererList based on the descriptor or parameters you pass in.

### Description

Creates a new Gizmo RendererList.

A RendererList represents a set of draw commands. To draw the Gizmo in a RendererList, add the CommandBuffer.DrawRendererList command to a CommandBuffer.
