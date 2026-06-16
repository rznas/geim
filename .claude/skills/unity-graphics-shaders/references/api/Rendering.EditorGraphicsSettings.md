<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorGraphicsSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor-specific script interface for Graphics Settings.

### Static Properties

| Property | Description |
| --- | --- |
| albedoSwatches | Returns an array of AlbedoSwatchInfo. |
| batchRendererGroupShaderStrippingMode | The current mode the BatchRendererGroup stripping is set to. |

### Static Methods

| Method | Description |
| --- | --- |
| GetRenderPipelineGlobalSettingsAsset | Gets the RenderPipelineGlobalSettings asset registered for the given RenderPipeline asset. |
| GetRenderPipelineSettingsFromInterface | Get all settings for the currently active pipeline that implement TSettingsInterfaceType . |
| GetShaderBuildSettings | Gets the currently active set of shader build settings. |
| GetSupportedRenderPipelineGraphicsSettingsTypesForPipeline | Retrieves the IRenderPipelineGraphicsSettings available for the given RenderPipelineAsset. |
| GetTierSettings | Returns TierSettings for a given build target and graphics tier. |
| PopulateRenderPipelineGraphicsSettings | Fills the settingsList with all the available IRenderPipelineGraphicsSettings that are supported for the RenderPipelineGlobalSettings asset. |
| SetRenderPipelineGlobalSettingsAsset | The method sets the association between the given RenderPipeline asset and the RenderPipelineGlobalSettings asset. |
| SetShaderBuildSettings | Sets the currently active shader build settings. |
| SetTierSettings | Set the TierSettings for a given build target and graphics tier. |
| TryGetFirstRenderPipelineSettingsFromInterface | Get the first settings for the currently active pipeline that implements TSettingsInterfaceType . |
| TryGetRenderPipelineSettingsForPipeline | Retrieves the settings object of type TSettings for the pipeline of type TPipeline if it is registered. |
| TryGetRenderPipelineSettingsFromInterface | Retrieves the array of the settings objects of type TSettingsInterfaceType for the active Render Pipeline if they are registered. |
| TryGetRenderPipelineSettingsFromInterfaceForPipeline | Retrieves the array of the settings objects of type TSettingsInterfaceType for the pipeline of type TPipeline if they are registered. |
