<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorGraphicsSettings.TryGetRenderPipelineSettingsForPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | The IRenderPipelineGraphicsSettings settings object if found, or `null`. |
| renderPipelineType | A valid RenderPipeline type. |

### Returns

**bool** True if settings of type `TSettings` is available for registered for pipeline of type `TPipeline`.

### Description

Retrieves the settings object of type `TSettings` for the pipeline of type `TPipeline` if it is registered.

Note that it is not required that `TPipeline` is the currently active pipeline.
