<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.RayTracingModeMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags that determine which RayTracingAccelerationStructure.RayTracingModes ray tracing instances must have in order to be added to the RayTracingAccelerationStructure.

Additional resources: Settings.

### Properties

| Property | Description |
| --- | --- |
| Nothing | Disable adding ray tracing instances to a RayTracingAccelerationStructure. |
| Static | Add only ray tracing instances set to RayTracingMode.Static to the RayTracingAccelerationStructure. |
| DynamicTransform | Add only ray tracing instances that use RayTracingMode.DynamicTransform to a RayTracingAccelerationStructure. |
| DynamicGeometry | Add only ray tracing instances that use RayTracingMode.DynamicGeometry to a RayTracingAccelerationStructure. |
| DynamicGeometryManualUpdate | Add only ray tracing instances that use RayTracingMode.DynamicGeometryManualUpdate to a RayTracingAccelerationStructure. |
| Everything | Add all ray tracing instances to a RayTracingAccelerationStructure except for those that use RayTracingMode.Off. |
