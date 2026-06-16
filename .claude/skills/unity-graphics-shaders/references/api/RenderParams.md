<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering parameters used by various rendering functions.

This struct defines common parameters shared across various rendering functions.

Additional resources: Graphics.RenderMesh, Graphics.RenderMeshInstanced, Graphics.RenderMeshIndirect, Graphics.RenderMeshPrimitives, Graphics.RenderPrimitives, Graphics.RenderPrimitivesIndexed, Graphics.RenderPrimitivesIndirect, Graphics.RenderPrimitivesIndexedIndirect.

### Properties

| Property | Description |
| --- | --- |
| camera | The camera used for rendering. If set to null (default) renders for all cameras. |
| entityId | The EntityId of the GameObject that issues the draw. Provide an EntityId to make a rendered GameObject pickable in the scene view when you click on it. The default value is EntityId.None, which means that you can't pick or outline the procedural GameObject in the scene view. |
| forceMeshLod | Force Unity to use a specific Mesh LOD if the mesh has Mesh LODs. |
| layer | Layer used for rendering. Layer to use. |
| lightProbeProxyVolume | Light Probe Proxy Volume (LPPV) used for rendering. |
| lightProbeUsage | The type of light probe usage. |
| material | Material used for rendering. |
| matProps | Material properties used for rendering. |
| meshLodSelectionBias | Bias to add to the calculated value when selecting a Mesh LOD level. |
| motionVectorMode | Motion vector mode used for rendering. |
| overrideSceneCullingMask | Uses the RenderParams.sceneCullingMask property to specify a custom SceneCullingMasks. This property is only available in the Editor, you can still access it in a Player but it'll be ignored. |
| receiveShadows | Descripes if the rendered geometry should receive shadows. |
| reflectionProbeUsage | The type of reflection probe used for rendering. |
| rendererPriority | Renderer priority. |
| renderingLayerMask | Renderer layer mask used for rendering. |
| sceneCullingMask | Overrides the scene culling mask for the rendered object. This can help you control prefab stage visibility or entities sub-scene visibiliy. This property is only available in the Editor, you can still access it in a Player but it'll be ignored.. |
| shadowCastingMode | Describes if geometry should cast shadows. |
| worldBounds | Defines world space bounds for the geometry. Used to cull and sort the rendered geometry. |

### Constructors

| Constructor | Description |
| --- | --- |
| RenderParams | Constructor. |
