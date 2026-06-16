<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parameters for culling and filtering ray tracing instances in RayTracingAccelerationStructure.CullInstances.

Additional resources: RayTracingAccelerationStructure.

### Properties

| Property | Description |
| --- | --- |
| alphaTestedMaterialConfig | A configuration for defining when a Material is considered being alpha tested. |
| flags | The flags that control different options in RayTracingAccelerationStructure.CullInstances function. |
| instanceTests | An array of RayTracingInstanceCullingTest objects used add Renderers to the acceleration structure based on their layer, ShadowCastingMode and Material type. |
| lodParameters | Parameters used for LOD culling. |
| materialTest | A Material-based test used in RayTracingAccelerationStructure.CullInstances. |
| minSolidAngle | The minimum solid angle in degrees that Unity uses for culling ray tracing instances associated with the Renderers in a Scene. |
| planes | An array of planes used for culling ray tracing instances associated with the Renderers in a Scene. |
| sphereCenter | The center of the sphere used for culling ray tracing instances associated with the Renderers in a Scene. |
| sphereRadius | The radius of the sphere used for culling ray tracing instances associated with the Renderers in a Scene. |
| subMeshFlagsConfig | The configuration that defines the RayTracingSubMeshFlags values for different types of Materials. |
| transparentMaterialConfig | A configuration for defining when a Material is considered being transparent. |
| triangleCullingConfig | A structure used for specifying ray tracing instance triangle culling options and vertex winding. |
