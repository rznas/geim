<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceTriangleCullingConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure is used by RayTracingAccelerationStructure.CullInstances function to determine triangle culling and vertex winding order for ray tracing instances.

Additional resources: RayTracingAccelerationStructure.

### Properties

| Property | Description |
| --- | --- |
| checkDoubleSidedGIMaterial | Whether to check Material.doubleSidedGI property for determine if a ray tracing instance is considered having double sided geometry. |
| forceDoubleSided | Disables triangle culling when rays encounter geometries during acceleration structure traversal on the GPU. All other options that affect triangle culling are ignored. |
| frontTriangleCounterClockwise | This property reverses front and back facings triangles, which is useful if for example, the application’s natural winding order differs from the default. |
| optionalDoubleSidedShaderKeywords | An array of Shader Keywords for defining double-sided geometries. |
