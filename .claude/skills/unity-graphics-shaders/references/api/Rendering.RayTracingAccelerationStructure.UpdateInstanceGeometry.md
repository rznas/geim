<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.UpdateInstanceGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | The `Renderer` associated with the ray tracing instance. |

### Description

Marks the geometry of the ray tracing instance as dirty.

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle associated with the ray tracing instance. |

### Description

Only ray tracing instances that use RayTracingMode.DynamicGeometryManualUpdate can use this function to update their geometry. The function doesn't have any effects on ray tracing instances using procedural geometries (AABBs).

To trigger an acceleration structure build on the GPU, call RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure. After invoking one of these functions, the geometry is not considered dirty anymore.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.AddInstances.
