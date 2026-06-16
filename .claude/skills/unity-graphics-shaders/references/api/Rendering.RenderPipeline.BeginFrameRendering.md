<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.BeginFrameRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context to use for rendering the cameras. |
| cameras | List of cameras currently being rendered. |

### Description

Calls the RenderPipelineManager.beginFrameRendering delegate.

This method is replaced by RenderPipeline.BeginContextRendering. It is supported and documented for backwards compatibility only.

If you are writing a custom Scriptable Render Pipeline, you can call this method at the start of your RenderPipeline.Render method to implement functionality using the RenderPipelineManager.beginFrameRendering delegate.

Using RenderPipelineManager.beginFrameRendering causes heap allocations. Using RenderPipeline.BeginContextRendering and the RenderPipelineManager.beginContextRendering delegate provide the same functionality, but without heap allocations. You should therefore use RenderPipeline.BeginContextRendering and the RenderPipelineManager.beginContextRendering delegate instead.

Additional resources: RenderPipelineManager.beginFrameRendering, RenderPipeline.EndFrameRendering, RenderPipelineManager.endFrameRendering.
