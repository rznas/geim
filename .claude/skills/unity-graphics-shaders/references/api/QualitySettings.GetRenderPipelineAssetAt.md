<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.GetRenderPipelineAssetAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the quality level. |

### Returns

**RenderPipelineAsset** Returns `null` if the quality level does not exist, or if no asset is assigned to that quality level. Otherwise, returns the RenderPipelineAsset that defines the override render pipeline for the quality level.

### Description

Provides a reference to the RenderPipelineAsset that defines the override render pipeline for a given quality level.

Unity uses the default render pipeline defined in GraphicsSettings.renderPipeline and per quality level overrides to determine the active render pipeline for the current quality level. For more information, see GraphicsSettings.currentRenderPipeline.

QualitySettings.renderPipeline] returns the same information, but only for the current quality level.

Additional resources: How to get, set, and configure the active render pipeline, GraphicsSettings.currentRenderPipeline, GraphicsSettings.defaultRenderPipeline, QualitySettings.renderPipeline], GraphicsSettings.allConfiguredRenderPipelines.
