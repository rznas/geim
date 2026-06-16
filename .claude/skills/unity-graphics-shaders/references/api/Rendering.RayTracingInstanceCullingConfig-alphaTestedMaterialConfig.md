<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig-alphaTestedMaterialConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A configuration for defining when a Material is considered being alpha tested.

RayTracingAccelerationStructure.CullInstances can specify a RayTracingSubMeshFlags value associated with alpha tested Materials to determine the behavior of Meshes or individual sub-meshes that use these Materials when building an acceleration structure, or when performing ray tracing.

For example, Meshes that use alpha tested Materials can simply use RayTracingSubMeshFlags.Enabled flag in RayTracingInstanceCullingConfig.subMeshFlagsConfig structure for alpha tested Materials which will allow the GPU to invoke an user-defined *any hit shader* when a ray intersects the geometry. The *any hit shader* can perform an alpha test and decide whether there was a valid ray-geometry intersection or not.

Additional resources: RayTracingInstanceCullingConfig.subMeshFlagsConfig.
