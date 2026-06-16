<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceRenderSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class is used to store changes to a number of rendering quality settings that are applied when using the Universal Render Pipeline.

### Static Properties

| Property | Description |
| --- | --- |
| AntiAliasingQualityBias | Adjust the quality of MSAA. |
| DecalsDrawDistance | Adjust the drawdistance for decals. |
| LutBias | Adjust the size of lookup tables that are used for color grading. |
| MainLightShadowCascadesCountBias | Adjust the number of shadow cascades for the main camera in the scene. |
| MainLightShadowmapResolutionMultiplier | Amount to multiply the main lights shadowmap resolution. Values are clamped between 0 and 1. |
| MaxShadowDistanceMultiplier | Adjust how far in the distance shadows will be rendered. Values are clamped between 0 and 1. |
| RenderScaleMultiplier | Lower the resolution of the main camera to reduce fillrate and GPU load. |
| ShadowQualityBias | Adjust the quality setting of shadows. |
| SkipDynamicBatching | Whether dynamic batching should be used when rendering multiple objects that share the same material. Useful on hardware that does not support instancing. |
| SkipFrontToBackSorting | Whether depth-based sorting should be enabled. When enabled, there is a higher load on the CPU but less rendering overdraw. When disabled, there is less CPU pressure but more overdraw. |
| SkipTransparentObjects | Whether transparent objects should be rendered When enabled, there is less rendering overdraw, but entire objects can disappear. |
