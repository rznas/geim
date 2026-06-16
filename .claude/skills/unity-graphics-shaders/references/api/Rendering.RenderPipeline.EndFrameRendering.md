<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.EndFrameRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context to use for rendering the cameras. |
| cameras | List of cameras currently being rendered. |

### Description

Calls the RenderPipelineManager.endFrameRendering delegate.

This method is replaced by RenderPipeline.EndContextRendering. It is supported and documented for backwards compatibility only.

If you are writing a custom Scriptable Render Pipeline, you can call this method at the end of RenderPipeline.Render to implement functionality using the RenderPipelineManager.endFrameRendering delegate.

Using [RenderPipelineManager.endFrameRendering]] causes heap allocations. Using RenderPipeline.EndContextRendering and the RenderPipelineManager.endContextRendering delegate provide the same functionality, but without heap allocations. You should therefore use RenderPipeline.EndContextRendering and the RenderPipelineManager.endContextRendering delegate instead.

Additional resources: RenderPipelineManager.endFrameRendering, RenderPipeline.BeginFrameRendering, RenderPipelineManager.beginFrameRendering, Unity Manual: Scriptable Render Pipeline.
