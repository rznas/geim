<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-endFrameRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate that you can use to invoke custom code at the end of RenderPipeline.Render.

This delegate is replaced by RenderPipelineManager.endContextRendering. It is supported and documented for backwards compatibility only.

When Unity calls RenderPipeline.EndFrameRendering, it executes the methods in this delegate's invocation list. If you are writing a custom Scriptable Render Pipeline, you can call this method at the start of RenderPipeline.Render.

Using this delegate causes heap allocations. Using RenderPipeline.EndContextRendering and the RenderPipelineManager.endContextRendering delegate provide the same functionality, but without unnecessary heap allocations. You should use them instead.

Additional resources: RenderPipeline.EndFrameRendering, RenderPipeline.BeginFrameRendering, RenderPipelineManager.beginFrameRendering, Unity Manual: Scriptable Render Pipeline
