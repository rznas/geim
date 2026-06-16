<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.UpdateInstanceMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | The Renderer associated with the ray tracing instance. |
| mask | The new mask. |

### Description

Updates the instance mask of a ray tracing instance.

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle associated with an AABB or Mesh ray tracing instance. |
| mask | The new mask. |

### Description

Updates the instance mask of a ray tracing instance.

Pass along a new mask and the handle RayTracingAccelerationStructure.AddInstance returns in order to update ray tracing mask associated with an axis-aligned bounding box (AABB) GraphicsBuffer or a Mesh.

Ray tracing instances in the acceleration structure contain an 8-bit user defined instance mask. The `TraceRay()` HLSL function has an 8-bit input parameter, `InstanceInclusionMask` which gets ANDed with the instance mask from any ray tracing instance that is a candidate for intersection during acceleration structure traversal on the GPU. If the result of the AND operation is zero, the GPU ignores the intersection.

Note that building the acceleration structure on the GPU has to be triggered by calling RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.RemoveInstance.
