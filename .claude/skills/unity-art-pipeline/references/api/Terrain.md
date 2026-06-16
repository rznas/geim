<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Terrain component renders the terrain.

### Static Properties

| Property | Description |
| --- | --- |
| activeTerrain | The active Terrain. This is a convenient function to get to the main Terrain in the Scene. |
| activeTerrains | The active terrains in the Scene. |
| compressedHolesFormat | Graphics format of the Terrain holes Texture when it is compressed. |
| compressedHolesTextureFormat | Texture format of the Terrain holes Texture when it is compressed. |
| heightmapFormat | Graphics format of the Terrain heightmap. |
| heightmapRenderTextureFormat | RenderTextureFormat of the terrain heightmap. |
| holesFormat | Graphics format of the Terrain holes Texture when it is not compressed. |
| holesRenderTextureFormat | Render texture format of the Terrain holes Texture. |
| normalmapFormat | Graphics format of the Terrain normal map texture. |
| normalmapRenderTextureFormat | Render texture format of the Terrain normal map texture. |
| normalmapTextureFormat | Texture format of the Terrain normal map texture. |

### Properties

| Property | Description |
| --- | --- |
| allowAutoConnect | Specifies if the terrain tile will be automatically connected to adjacent tiles. |
| bakeLightProbesForTrees | Whether to bake an array of internal light probes for Tree Editor trees (Editor only). |
| basemapDistance | Heightmap patches beyond basemap distance will use a precomputed low res basemap. |
| bottomNeighbor | Terrain bottom neighbor. |
| collectDetailPatches | Collect detail patches from memory. |
| deringLightProbesForTrees | Removes ringing from light probes on Tree Editor trees (Editor only). |
| detailObjectDensity | Density of detail objects. |
| detailObjectDistance | Detail objects will be displayed up to this distance. |
| drawHeightmap | Indicates whether Unity draws the Terrain geometry itself. |
| drawInstanced | Set to true to enable the terrain instance renderer. The default value is false. |
| drawTreesAndFoliage | Specify if terrain trees and details should be drawn. If disabled, this will also disable updates to renderer positions for trees and details. Tree and detail renderer positions will update again once this setting is re-enabled. |
| editorRenderFlags | Controls what part of the terrain should be rendered. |
| enableHeightmapLODFrustumCulling | Controls frustum culling for the terrain heightmap LOD system. |
| enableHeightmapRayTracing | When this options is enabled, Terrain heightmap geometries will be added in acceleration structures used for Ray Tracing. |
| groupingID | Grouping ID for auto connect. |
| heightmapMaximumLOD | Limits the Terrain's maximum rendering resolution. |
| heightmapMinimumLODSimplification | Limits how simplified the rendered terrain can be. |
| heightmapPixelError | An approximation of how many pixels the terrain will pop in the worst case when switching lod. |
| ignoreQualitySettings | When enabled, the terrain ignores the terrain overrides set in the QualitySettings. |
| keepUnusedRenderingResources | Defines whether Unity frees per-Camera rendering resources for the Terrain when those resources aren't in use after a certain number of frames. |
| leftNeighbor | The Terrain tile to the left, which is in the negative X direction. |
| lightmapIndex | The index of the baked lightmap applied to this terrain. |
| lightmapScaleOffset | The UV scale & offset used for a baked lightmap. |
| materialTemplate | The custom material Unity uses to render the Terrain. |
| normalmapTexture | Returns the normal map texture computed from sampling the heightmap. It is only used when terrain is rendered using instancing. |
| patchBoundsMultiplier | Set the terrain bounding box scale. |
| preserveTreePrototypeLayers | Allows you to specify how Unity chooses the layer for tree instances. |
| realtimeLightmapIndex | The index of the realtime lightmap applied to this terrain. |
| realtimeLightmapScaleOffset | The UV scale & offset used for a realtime lightmap. |
| reflectionProbeUsage | How reflection probes are used for terrain. See ReflectionProbeUsage. |
| renderingLayerMask | Determines which rendering layers the Terrain renderer lives on. |
| rightNeighbor | The Terrain tile to the left, which is in the positive X direction. |
| shadowCastingMode | Allows you to set the shadow casting mode for the terrain. |
| terrainData | The Terrain Data that stores heightmaps, terrain textures, detail meshes and trees. |
| topNeighbor | Terrain top neighbor. |
| treeBillboardDistance | Distance from the camera where trees will be rendered as billboards only. |
| treeCrossFadeLength | Total distance delta that trees will use to transition from billboard orientation to mesh orientation. |
| treeDistance | The maximum distance at which trees are rendered. |
| treeLODBiasMultiplier | The multiplier to the current LOD bias used for rendering LOD trees (i.e. SpeedTree trees). |
| treeMaximumFullLODCount | Maximum number of trees rendered at full LOD. |
| treeMotionVectorModeOverride | The motion vector rendering mode for all SpeedTree models painted on the terrain. |

### Public Methods

| Method | Description |
| --- | --- |
| AddTreeInstance | Adds a tree instance to the terrain. |
| Flush | Flushes any change done in the terrain so it takes effect. |
| GetClosestReflectionProbes | Fills the list with reflection probes whose AABB intersects with terrain's AABB. Their weights are also provided. Weight shows how much influence the probe has on the terrain, and is used when the blending between multiple reflection probes occurs. |
| GetKeepUnusedCameraRenderingResources | Each Camera has its own KeepUnusedRenderingResources setting, which is false by default. Unity uses this per-Camera setting in combination with the Terrain's overall KeepUnusedRenderingResources setting. If either setting is true, Unity preserves all rendering resources regardless of how long they've remained unused. |
| GetPosition | Get the world space position of the terrain. |
| GetSplatMaterialPropertyBlock | Get the previously set splat material properties by copying to the dest MaterialPropertyBlock object. |
| SampleHeight | Samples the height at the given position defined in world space, relative to the Terrain space. |
| SetKeepUnusedCameraRenderingResources | Defines whether Unity cleans up rendering resources for a given Camera during garbage collection. |
| SetNeighbors | Lets you set up the connection between neighboring Terrain tiles. This ensures LOD matches up on neighboring Terrain tiles. |
| SetSplatMaterialPropertyBlock | Set the additional material properties when rendering the terrain heightmap using the splat material. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateTerrainGameObject | Creates a Terrain including collider from TerrainData. |
| GetActiveTerrains | Populates a List of Terrains with the active Terrains in the Scene. |
| SetConnectivityDirty | Marks the current connectivity status as invalid. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
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
