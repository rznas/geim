<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.RemoveInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetRenderer | The Renderer associated with the ray tracing instance. |

### Description

Removes a ray tracing instance associated with a Renderer from this RayTracingAccelerationStructure.

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle associated with an AABB or Mesh ray tracing instance. |

### Description

Removes a ray tracing instance associated with an axis-aligned bounding box (AABBs) GraphicsBuffer or a Mesh instance from this RayTracingAccelerationStructure.

Note that to build the acceleration structure on the GPU, you must call RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.ClearInstances.
