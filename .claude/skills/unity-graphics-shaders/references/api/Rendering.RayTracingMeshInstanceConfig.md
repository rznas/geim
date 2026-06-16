<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMeshInstanceConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parameters you can use to configure ray tracing Mesh instances that are part of a RayTracingAccelerationStructure.

This structure groups common parameters between different ray tracing instances.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.AddInstances.

### Properties

| Property | Description |
| --- | --- |
| accelerationStructureBuildFlags | The flags Unity uses when it builds the acceleration structure for the geometry referenced by this ray tracing instance configuration. |
| accelerationStructureBuildFlagsOverride | Whether to override the build flags specified when creating a RayTracingAccelerationStructure. |
| enableTriangleCulling | Whether front/back face culling for this ray tracing instance is enabled. |
| frontTriangleCounterClockwise | Whether to flip the way triangles face in this ray tracing instance. |
| layer | The Layer used by the ray tracing instance. |
| lightProbeProxyVolume | The LightProbeProxyVolume the ray tracing instance uses. |
| lightProbeUsage | The Light probe interpolation type for this instance. |
| mask | The ray tracing instance mask. |
| material | The material the ray tracing instance uses. |
| materialProperties | Additional material properties to apply onto material. |
| mesh | The mesh to add to a RayTracingAccelerationStructure. |
| meshLod | The Mesh LOD to select for this instance. Does nothing if the mesh does not have Mesh LODs. A value of -1 will include the entire index range. |
| motionVectorMode | Motion vector mode. |
| rayTracingMode | The RayTracingMode that you can use to control how the geometry associated with a mesh ray tracing instance is updated. |
| renderingLayerMask | A mask that you can access in HLSL with unity_RenderingLayer built-in shader uniform. |
| subMeshFlags | Flags that determine how rays intersect the geometry for each sub-mesh relative to material type during ray tracing. |
| subMeshIndex | The index of a sub-mesh when the mesh contains multiple sub-meshes. |
