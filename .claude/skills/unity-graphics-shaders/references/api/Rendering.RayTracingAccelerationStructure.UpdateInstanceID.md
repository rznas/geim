<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.UpdateInstanceID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | The Renderer associated with the ray tracing instance. |
| instanceID | The new instance ID. |

### Description

Updates the instance ID of a ray tracing instance.

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle associated with an AABB or Mesh ray tracing instance. |
| instanceID | The new instance ID. |

### Description

Updates the instance ID of a ray tracing instance.

Pass along a new instance ID and the handle RayTracingAccelerationStructure.AddInstance returns in order to update the ray tracing instance ID associated with an axis-aligned bounding box (AABB) GraphicsBuffer or a Mesh.

Ray tracing instances in the acceleration structure contain an user-defined instance ID. You can access this instance ID in HLSL using `InstanceID()` intrinsic which provides a way to access additional per-instance custom data. Note that this function is available only in closest hit, any hit, and intersection shaders.

By default, if an instance ID is not specified when calling RayTracingAccelerationStructure.AddInstance function, Unity will assign a instance ID lower than the value returned by the RayTracingAccelerationStructure.GetInstanceCount function.

Note that building the acceleration structure on the GPU has to be triggered by calling RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.RemoveInstance.
