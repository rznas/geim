<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingGeometryInstanceConfig-subMeshFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags that determine the ray-geometry intersection behavior relative to material type during ray tracing.

The material type can influence the value of this flag. For example if Unity considers the material opaque, you can specify the RayTracingSubMeshFlags.Enabled and RayTracingSubMeshFlags.ClosestHitOnly flags together for maximum ray tracing performance.
