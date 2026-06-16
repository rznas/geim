<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingSubMeshFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags that determine how rays intersect the geometry for each submesh relative to Material type during ray tracing.

When RayTracingAccelerationStructure.AddInstance is called, a Renderer can be passed as argument. The Renderer's Mesh can have one or more sub-meshes. Use these flags to determine the behavior of individual sub-meshes when building an acceleration structure or when performing ray tracing.

Additional resources: RayTracingAccelerationStructure, MeshFilter.sharedMesh, Mesh.subMeshCount.

### Properties

| Property | Description |
| --- | --- |
| Disabled | Unity skips the sub-mesh when building a RayTracingAccelerationStructure. As a result, rays cast using TraceRay HLSL function will never intersect the sub-mesh. |
| Enabled | The sub-mesh is provided as input to a RayTracingAccelerationStructure build operation. |
| ClosestHitOnly | Unity considers this geometry opaque. This geometry responds to ray intersections as if it does not have an any hit shader. |
| UniqueAnyHitCalls | Enable this flag to guarantee that the GPU only invokes the any hit shader once for each ray-triangle pair. |
