<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceScalerProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scaler profiles are used to combine all settings of scalers into one profile to be able to change the settings of each scaler at once.

### Properties

| Property | Description |
| --- | --- |
| AddedScalers | List of custom scalers added to the provider settings via the scaler profile UI. |
| Name | Name of the Scaler Profile. Used to find profiles and switch them during runtime. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| AdaptiveBatching | A scaler setting used by AdaptivePerformanceIndexer to control if dynamic batching is enabled. |
| AdaptiveDecals | A scaler setting used by AdaptivePerformanceIndexer to change decal properties. |
| AdaptiveFramerate | A scaler setting used by AdaptivePerformanceIndexer to adjust the application update rate using Application.targetFrameRate. |
| AdaptiveLayerCulling | A scaler setting used by AdaptivePerformanceIndexer to change the layer culling distance. |
| AdaptiveLOD | A scaler setting used by AdaptivePerformanceIndexer for adjusting at what distance LODs are switched. |
| AdaptiveLut | A scaler setting used by AdaptivePerformanceIndexer to adjust the size of the palette used for color grading in URP. |
| AdaptiveMSAA | A scaler setting used by AdaptivePerformanceIndexer to adjust the level of antialiasing. |
| AdaptivePhysics | A scaler setting used by AdaptivePerformanceIndexer to change physics properties. |
| AdaptiveResolution | A scaler setting used by AdaptivePerformanceIndexer to adjust the resolution of all render targets that allow dynamic resolution. |
| AdaptiveShadowCascade | A scaler setting used by AdaptivePerformanceIndexer to adjust the number of shadow cascades to be used. |
| AdaptiveShadowDistance | A scaler setting used by AdaptivePerformanceIndexer to change the distance at which shadows are rendered. |
| AdaptiveShadowmapResolution | A scaler setting used by AdaptivePerformanceIndexer to adjust the resolution of shadow maps. |
| AdaptiveShadowQuality | A scaler setting used by AdaptivePerformanceIndexer to adjust the quality of shadows. |
| AdaptiveSorting | A scaler setting used by AdaptivePerformanceIndexer to change if objects in the scene are sorted by depth before rendering to reduce overdraw. |
| AdaptiveTransparency | A scaler setting used by AdaptivePerformanceIndexer to disable transparent objects rendering. |
| AdaptiveViewDistance | A scaler setting used by AdaptivePerformanceIndexer to change the view distance. |
| DefaultScalerSettings | Returns the list of default scaler settings. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplySettings | Apply existing external settings to a scaler to override the existing settings. |
