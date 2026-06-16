<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.TierSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A struct that represents graphics settings for a given build target and graphics tier.

**Note:** Graphics tiers and tier settings are only supported in the Built-in Render Pipeline.

You can configure these settings in the Unity Editor, in the Graphics Settings window.

Additional resources: Graphics tiers, GraphicsTier, Graphics.activeTier, EditorGraphicsSettings.GetTierSettings, EditorGraphicsSettings.SetTierSettings.

### Properties

| Property | Description |
| --- | --- |
| cascadedShadowMaps | Whether to use cascaded shadow maps. |
| detailNormalMap | Whether to sample a Detail Normal Map, if assigned. |
| enableLPPV | Whether Light Probe Proxy Volume should be used. |
| hdr | Whether to enable High Dynamic Range (HDR) rendering. |
| hdrMode | The format to use for the HDR buffer. |
| prefer32BitShadowMaps | Whether Unity should try to use 32-bit shadow maps, where possible. |
| realtimeGICPUUsage | The RealtimeGICPUUsage to use. |
| reflectionProbeBlending | Whether to enable Reflection Probes Blending. |
| reflectionProbeBoxProjection | Whether to use Reflection Probes Box Projection. |
| renderingPath | The rendering path to use. |
| semitransparentShadows | Whether to enable Semitransparent Shadows. |
| standardShaderQuality | The Standard Shader Quality. |
