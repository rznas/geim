<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SupportedRenderingFeatures.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the rendering features supported by a given render pipeline.

Set the active supported rendering features when enabling a render pipeline. This will change the state of the editor UI to reflect the changes.

### Static Properties

| Property | Description |
| --- | --- |
| active | Get / Set a SupportedRenderingFeatures. |

### Properties

| Property | Description |
| --- | --- |
| ambientProbeBaking | Determines if this renderer supports ambient probe baking. |
| defaultMixedLightingModes | This is the fallback mode if the mode the user had previously selected is no longer available. See SupportedRenderingFeatures.mixedLightingModes. |
| defaultReflectionProbeBaking | Specifies whether this renderer bakes a default Reflection Probe. |
| editableMaterialRenderQueue | Determines whether the Scriptable Render Pipeline will override the default Material’s Render Queue settings and, if true, hides the Render Queue property in the Inspector. |
| enlighten | Determines if Enlighten Realtime Global Illumination lightmapper is supported by the currently selected pipeline. If it is not supported, Enlighten-specific settings do not appear in the Editor, which then defaults to the CPU Lightmapper. |
| lightmapBakeTypes | What baking types are supported. The unsupported ones will be hidden from the UI. See LightmapBakeType. |
| lightmapsModes | Specifies what modes are supported. Has to be at least one. See LightmapsMode. |
| lightProbeProxyVolumes | Are light probe proxy volumes supported? |
| mixedLightingModes | Specifies what LightmapMixedBakeModes that are supported. Please define a SupportedRenderingFeatures.defaultMixedLightingModes in case multiple modes are supported. |
| motionVectors | Are motion vectors supported? |
| overridesEnableLODCrossFade | Specifies whether the renderer overrides the Enable LOD Cross Fade settings in the Quality Settings Panel. If It does, the renderer does not need the built-in UI for Enable LOD Cross Fade settings. |
| overridesEnvironmentLighting | Determines if the renderer will override the Environment Lighting and will no longer need the built-in UI for it. |
| overridesFog | Determines if the renderer will override the fog settings in the Lighting Panel and will no longer need the built-in UI for it. |
| overridesLightProbeSystem | Determines if the renderer will override the light probe system with a different one. |
| overridesLightProbeSystemWarningMessage | The message to display in the LightProbeGroup editor if the light probe system is overridden by the renderer. |
| overridesLODBias | Specifies whether the renderer overrides the LOD bias settings in the Quality Settings Panel. If It does, the renderer does not need the built-in UI for LOD bias settings. |
| overridesMaximumLODLevel | Specifies whether the renderer overrides the maximum LOD level settings in the Quality Settings Panel. If It does, the renderer does not need the built-in UI for maximum LOD level settings. |
| overridesOtherLightingSettings | Determines if the renderer will override halo and flare settings in the Lighting Panel and will no longer need the built-in UI for it. |
| overridesRealtimeReflectionProbes | Specifies whether the render pipeline overrides the real-time Reflection Probes settings in the Quality settings. If It does, the render pipeline does not need the built-in UI for real-time Reflection Probes settings. |
| overridesShadowmask | Specifies whether the render pipeline overrides the Shadowmask settings in the Quality settings. |
| particleSystemInstancing | Determines if the renderer supports Particle System GPU instancing. |
| receiveShadows | Can renderers support receiving shadows? |
| reflectionProbeModes | Flags for supported reflection probes. |
| reflectionProbes | Are reflection probes supported? |
| reflectionProbesBlendDistance | If this property is true, the blend distance field in the Reflection Probe Inspector window is editable. |
| rendererPriority | Determines if the renderer supports renderer priority sorting. |
| rendererProbes | Determines whether the Renderer supports probe lighting. |
| rendersUIOverlay | Determines whether the function to render UI overlays is called by SRP and not by the engine. |
| skyOcclusion | If True, the renderer supports sky occlusion in Probe Volumes. |
| supportsClouds | If True, the renderer supports cloud layers or volumetric clouds. |
| supportsHDR | If True, the renderer supports HDR display output. |
