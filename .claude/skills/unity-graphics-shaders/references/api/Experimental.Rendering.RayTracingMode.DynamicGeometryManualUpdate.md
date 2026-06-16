<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.RayTracingMode.DynamicGeometryManualUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this mode when the associated geometry or transformation can change. Call RayTracingAccelerationStructure.UpdateInstanceGeometry to mark the geometry as dirty.

If you add a ray tracing instance that uses this mode to a RayTracingAccelerationStructure and its geometry is dirty, Unity updates the associated geometry acceleration structure (BLAS) when RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure is invoked. After invoking one of these functions, the geometry isn't considered dirty anymore.

Additional resources: RayTracingAccelerationStructure.UpdateInstanceGeometry, RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.CullInstances.
