<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMeshInstanceConfig-mesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mesh to add to a RayTracingAccelerationStructure.

If the mesh is destroyed then Unity automatically removes all ray tracing instances that were using the mesh from the RayTracingAccelerationStructure.

Unity only ray traces triangle-based geometries. It does not ray trace other MeshTopology types.
