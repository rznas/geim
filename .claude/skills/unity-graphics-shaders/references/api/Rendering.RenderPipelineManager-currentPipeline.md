<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineManager-currentPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the active RenderPipeline.

The active render pipeline is the render pipeline that Unity is currently using to render your application and parts of the Editor such as the Scene view and Game view. The active render pipeline can be a default value, or you can set override values for different quality levels.

Unity updates this property only after rendering at least one frame with the active render pipeline, which can take up to four calls to Update. This means that this property is `null` on startup, and does not immediately reflect changes to the active render pipeline.

You can access the RenderPipelineAsset that defines the active render pipeline with GraphicsSettings.currentRenderPipeline. `GraphicsSettings.currentRenderPipeline` is always up to date, which means that you can query it on startup or immediately after changing the active render pipeline.

Additional resources: How to get, set, and configure the active render pipeline, GraphicsSettings.currentRenderPipeline, GraphicsSettings.defaultRenderPipeline, QualitySettings.renderPipeline, RenderPipelineManager.activeRenderPipelineTypeChanged.
