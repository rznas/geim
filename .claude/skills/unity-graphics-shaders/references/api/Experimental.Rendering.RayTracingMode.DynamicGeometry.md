<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.RayTracingMode.DynamicGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this mode when the associated geometry or transformation can change.

If you add a ray tracing instance that uses this mode to a RayTracingAccelerationStructure, Unity updates the associated geometry acceleration structure (BLAS) every time RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure is invoked.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.CullInstances.
