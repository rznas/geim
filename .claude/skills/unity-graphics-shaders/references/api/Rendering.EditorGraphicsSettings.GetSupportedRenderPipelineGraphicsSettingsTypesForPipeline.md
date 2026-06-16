<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorGraphicsSettings.GetSupportedRenderPipelineGraphicsSettingsTypesForPipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderPipelineAssetType | A valid RenderPipelineAsset type. |

### Returns

**IEnumerable<Type>** The available IRenderPipelineGraphicsSettings for `T`

### Description

Retrieves the IRenderPipelineGraphicsSettings available for the given RenderPipelineAsset.

Note that it is not required that `T` is the currently active pipeline.
