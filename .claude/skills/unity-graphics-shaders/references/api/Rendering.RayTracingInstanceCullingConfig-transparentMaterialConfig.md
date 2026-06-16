<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig-transparentMaterialConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A configuration for defining when a Material is considered being transparent.

RayTracingAccelerationStructure.CullInstances can specify a RayTracingSubMeshFlags value associated with transparent Materials to determine the behavior of Meshes or individual sub-meshes that use these Materials when building an acceleration structure, or when performing ray tracing.

For example, Meshes that use transparent Materials can be ignored when building the acceleration structure by using RayTracingSubMeshFlags.Disabled in RayTracingInstanceCullingConfig.subMeshFlagsConfig structure.

Additional resources: RayTracingInstanceCullingConfig.subMeshFlagsConfig.
