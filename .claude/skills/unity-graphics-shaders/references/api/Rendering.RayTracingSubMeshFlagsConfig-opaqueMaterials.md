<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingSubMeshFlagsConfig-opaqueMaterials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The corresponding RayTracingSubMeshFlags value for opaque Materials.

To maximize ray tracing performance on the GPU, RayTracingSubMeshFlags.Enabled combined with RayTracingSubMeshFlags.ClosestHitOnly is recommended. This flags combination will ensure that *any hit shaders* are not invoked during acceleration structure traversal when rays hit opaque geometries.

Additional resources: RayTracingAccelerationStructure.CullInstances.
