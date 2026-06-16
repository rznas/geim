<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingSubMeshFlagsConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A structure used by RayTracingAccelerationStructure.CullInstances that defines the RayTracingSubMeshFlags values for different Material types.

This configuration determines the behavior of Meshes or individual sub-meshes based on their Material type when building an acceleration structure or when performing ray tracing.

Additional resources: RayTracingAccelerationStructure.

### Properties

| Property | Description |
| --- | --- |
| alphaTestedMaterials | The corresponding RayTracingSubMeshFlags value for alpha tested Materials. |
| opaqueMaterials | The corresponding RayTracingSubMeshFlags value for opaque Materials. |
| transparentMaterials | The corresponding RayTracingSubMeshFlags value for transparent Materials. |
