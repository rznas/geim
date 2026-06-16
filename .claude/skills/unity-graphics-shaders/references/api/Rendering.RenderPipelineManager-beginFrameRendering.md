<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-beginFrameRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code at the start of RenderPipeline.Render.

This delegate is replaced by RenderPipelineManager.beginContextRendering. It is supported and documented for backwards compatibility only.

When Unity calls RenderPipeline.BeginFrameRendering, it executes the methods in this delegate's invocation list. If you are writing a custom Scriptable Render Pipeline, you can call this method at the start of RenderPipeline.Render.

Using this delegate causes heap allocations. Using RenderPipeline.BeginContextRendering and the RenderPipelineManager.beginContextRendering delegate provide the same functionality, but without unnecessary heap allocations. You should use them instead.

Additional resources: RenderPipeline.BeginFrameRendering, RenderPipeline.EndFrameRendering, RenderPipelineManager.endFrameRendering
