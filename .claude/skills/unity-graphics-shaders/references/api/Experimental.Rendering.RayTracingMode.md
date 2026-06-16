<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.RayTracingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for updating a ray tracing instance added to a RayTracingAccelerationStructure.

Additional resources: SystemInfo.supportsRayTracing.

### Properties

| Property | Description |
| --- | --- |
| Off | Use this mode to ensure the ray tracing instances are not added to a RayTracingAccelerationStructure, and that they cannot be ray traced. |
| Static | Use this mode to have the ray tracing instances remain static, and never update their transformation or geometry. |
| DynamicTransform | Use this mode to have ray tracing instances update the transformation. This mode does not update their geometry. |
| DynamicGeometry | Use this mode when the associated geometry or transformation can change. |
| DynamicGeometryManualUpdate | Use this mode when the associated geometry or transformation can change. Call RayTracingAccelerationStructure.UpdateInstanceGeometry to mark the geometry as dirty. |
