<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingSubMeshFlags.Enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The sub-mesh is provided as input to a RayTracingAccelerationStructure build operation.

Unity does not consider a sub-mesh opaque if this is the only flag it has, and allows the GPU to invoke a user-defined any hit shader when a ray intersects with that sub-mesh. This can potentially impact GPU performance during acceleration structure traversal.
