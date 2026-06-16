<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This represents the script interface for Quality Settings.

Use the `QualitySettings` class to change the current quality level at runtime. You can check the details of quality settings in your project's Quality Settings.

### Static Properties

| Property | Description |
| --- | --- |
| activeColorSpace | Active color space (Read Only). |
| anisotropicFiltering | Global anisotropic filtering mode. |
| antiAliasing | Choose the level of Multi-Sample Anti-aliasing (MSAA) that the GPU performs. |
| asyncUploadBufferSize | Sets the ring buffer size used for asynchronous texture and mesh data uploads. |
| asyncUploadPersistentBuffer | This flag determines whether Unity retains the ring buffer allocation used for asynchronous texture and mesh uploads after all upload operations have completed. |
| asyncUploadTimeSlice | Sets the time-slice allocated per frame for asynchronous texture and mesh data uploads. |
| billboardsFaceCameraPosition | If enabled, billboards will face towards camera position rather than camera orientation. |
| count | The number of Quality Levels. |
| desiredColorSpace | Desired color space (Read Only). |
| enableLODCrossFade | Enables or disables LOD Cross Fade. |
| globalTextureMipmapLimit | Indicates how many of the highest-resolution mips of each texture Unity does not upload at the given quality level. To set more specific mipmap limits, you can flag textures to ignore mipmap limits or assign them to mipmap limit groups. |
| lodBias | The multiplier that scales the LOD transition thresholds for all LOD Groups. |
| maximumLODLevel | A maximum LOD level. All LOD groups. |
| maxQueuedFrames | Maximum number of frames queued up by graphics driver. |
| meshLodThreshold | Global error threshold that Unity uses when selecting a Mesh LOD level. A higher value results in faster transitions to less detailed Mesh LODs. |
| names | The indexed list of available Quality Settings. |
| particleRaycastBudget | Budget for how many ray casts can be performed per frame for approximate collision testing. |
| pixelLightCount | The maximum number of pixel lights that should affect any object. |
| realtimeGICPUUsage | How much CPU usage to assign to the final lighting calculations at runtime. |
| realtimeReflectionProbes | Enables or disables real-time reflection probes. |
| renderPipeline | The RenderPipelineAsset that defines the override render pipeline for the current quality level. |
| resolutionScalingFixedDPIFactor | In resolution scaling mode, this factor is used to multiply with the target Fixed DPI specified to get the actual Fixed DPI to use for this quality setting. |
| shadowCascade2Split | The normalized cascade distribution for a 2 cascade setup. The value defines the position of the cascade with respect to Zero. |
| shadowCascade4Split | The normalized cascade start position for a 4 cascade setup. Each member of the vector defines the normalized position of the coresponding cascade with respect to Zero. |
| shadowCascades | Number of cascades to use for directional light shadows. |
| shadowDistance | Shadow drawing distance. |
| shadowmaskMode | The rendering mode of Shadowmask. |
| shadowNearPlaneOffset | Offset shadow frustum near plane. |
| shadowProjection | Directional light shadow projection. |
| shadowResolution | The default resolution of the shadow maps. |
| shadows | Real-time Shadows type to be used. |
| skinWeights | The maximum number of bones per vertex that are taken into account during skinning, for all meshes in the project. |
| softParticles | Should soft blending be used for particles? |
| softVegetation | Use a two-pass shader for the vegetation in the terrain engine. |
| streamingMipmapsActive | Enable automatic streaming of texture mipmap levels based on their distance from all active cameras. |
| streamingMipmapsAddAllCameras | Process all enabled Cameras for texture streaming (rather than just those with StreamingController components). |
| streamingMipmapsMaxFileIORequests | The maximum number of active texture file IO requests from the texture streaming system. |
| streamingMipmapsMaxLevelReduction | The maximum number of mipmap levels to discard for each texture. |
| streamingMipmapsMemoryBudget | The total amount of memory (in megabytes, or in bytes, depending on your platform) to be used by streaming and non-streaming textures. |
| streamingMipmapsRenderersPerFrame | The number of renderer instances that are processed each frame when calculating which texture mipmap levels should be streamed. |
| terrainBasemapDistance | Value set to Terrain.basemapDistance if TerrainQualityOverrides.BasemapDistance is set in terrainQualityOverrides. |
| terrainBillboardStart | Value set to Terrain.treeBillboardDistance if TerrainQualityOverrides.BillboardStart is set in terrainQualityOverrides. |
| terrainDetailDensityScale | Value set to Terrain.detailObjectDensity if TerrainQualityOverrides.DetailDensity is set in terrainQualityOverrides. |
| terrainDetailDistance | Value set to Terrain.detailObjectDistance if TerrainQualityOverrides.DetailDistance is set in terrainQualityOverrides. |
| terrainFadeLength | Value set to Terrain.treeCrossFadeLength if TerrainQualityOverrides.FadeLength is set in terrainQualityOverrides. |
| terrainMaxTrees | Value set to Terrain.treeMaximumFullLODCount if TerrainQualityOverrides.MaxTrees is set in terrainQualityOverrides. |
| terrainPixelError | Value set to Terrain.heightmapPixelError if TerrainQualityOverrides.PixelError is set in terrainQualityOverrides. |
| terrainQualityOverrides | Controls which fields should have their values overriden in active Terrains. |
| terrainTreeDistance | Value set to Terrain.treeDistance if TerrainQualityOverrides.TreeDistance is set in terrainQualityOverrides. |
| useLegacyDetailDistribution | Use the legacy pre-2022.2 algorithm for distributing details on terrain. |
| vSyncCount | Represents the number of vertical syncs that should pass between each frame. |

### Static Methods

| Method | Description |
| --- | --- |
| DecreaseLevel | Decrease the current quality level. |
| ForEach | Executes the given Action for each Quality Level configured in QualitySettings. |
| GetActiveQualityLevelsForPlatform | [Editor Only] Obtains an array with the Quality Level indexes that are selected for the given platform. |
| GetActiveQualityLevelsForPlatformCount | [Editor Only] Obtains the number of Quality Levels that are selected for a given platform. |
| GetAllRenderPipelineAssetsForPlatform | [Editor Only] Fills the given list with all the Render Pipeline Assets on any Quality Level for the given platform. Without filtering by Render Pipeline Asset type or null. |
| GetQualityLevel | Returns the current graphics quality level. |
| GetQualitySettings | Provides a reference to the QualitySettings object. |
| GetRenderPipelineAssetAt | Provides a reference to the RenderPipelineAsset that defines the override render pipeline for a given quality level. |
| GetRenderPipelineAssetsForPlatform | [Editor Only] Obtains a set with the non null Render Pipeline Assets selected on all the Quality Levels for the given platform. |
| GetTextureMipmapLimitSettings | Retrieves a copy of the TextureMipmapLimitSettings from a texture mipmap limit group. |
| IncreaseLevel | Increase the current quality level. |
| IsPlatformIncluded | [Editor Only] Returns if the given platform is included by the Quality Level. |
| SetLODSettings | Sets the lodBias and maximumLODLevel at the same time. |
| SetQualityLevel | Sets a new graphics quality level. |
| SetTextureMipmapLimitSettings | Applies new TextureMipmapLimitSettings to the indicated texture mipmap limit group. |
| TryExcludePlatformAt | [Editor Only] Excludes a platform for the given Quality Level. |
| TryIncludePlatformAt | [Editor Only] Includes a platform to be supported by the Quality Level. |

### Events

| Event | Description |
| --- | --- |
| activeQualityLevelChanged | Delegate that you can use to invoke custom code when Unity changes the current Quality Level. |
| activeQualityLevelRenamed | This can be used to invoke custom code when the currently active QualityLevel is being renamed. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
