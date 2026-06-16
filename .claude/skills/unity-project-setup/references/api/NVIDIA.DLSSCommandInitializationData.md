<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.DLSSCommandInitializationData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represent the initialization state of a DLSSContext. You can only use and set this when calling GraphicsDevice.CreateFeature.

### Properties

| Property | Description |
| --- | --- |
| featureFlags | Bit mask containing feature flags to be used for DLSS. |
| inputRTHeight | The texture input height size of the input buffers in texels. |
| inputRTWidth | The texture input width size of the input buffers in texels. |
| outputRTHeight | The output buffer height size in texels to upscale to. |
| outputRTWidth | The output buffer width size in texels to upscale to. |
| presetBalancedMode | DLSS Render Preset for Balanced mode. |
| presetDlaaMode | DLSS Render Preset for DLAA mode. |
| presetPerformanceMode | DLSS Render Preset for Performance mode. |
| presetQualityMode | DLSS Render Preset for Quality mode. |
| presetUltraPerformanceMode | DLSS Render Preset for Ultra Performance mode. |
| quality | The quality mode for DLSS. |

### Public Methods

| Method | Description |
| --- | --- |
| GetFlag | Helper function. Gets weither if a DLSS feature is set or unset. Additional resources: DLSSFeatureFlags. |
| SetFlag | Helper function. Controls the feature flags used by DLSS. Additional resources: DLSSFeatureFlags. |
