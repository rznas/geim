<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorGraphicsSettings.TryGetRenderPipelineSettingsFromInterfaceForPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | The array of the settings objects of type `TSettingsInterfaceType` if found, or `null`. |
| renderPipelineType | A valid RenderPipeline type. |

### Returns

**bool** True if any settings of type `TSettings` are available and registered for the pipeline of type `TPipeline`.

### Description

Retrieves the array of the settings objects of type `TSettingsInterfaceType` for the pipeline of type `TPipeline` if they are registered.

Note that it is not required that `TPipeline` is the currently active pipeline.
