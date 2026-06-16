<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.UpdateInstanceTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | The Renderer associated with a ray tracing instance. |

### Description

Updates the transformation of a ray tracing instance.

For a ray tracing instance associated with a Renderer component, Unity retrieves the transformation from the Transform component.

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle associated with a AABB or Mesh ray tracing instance. |
| matrix | The new transformation matrix of the ray tracing instance. |

### Description

Updates the transformation of a ray tracing instance.

Pass along a new transformation matrix and the handle RayTracingAccelerationStructure.AddInstance returns in order to transform a ray tracing instance associated with a axis-aligned bounding box (AABB) GraphicsBuffer or a Mesh.

Access the transformation matrix in shader code using `WorldToObject()` or `ObjectToWorld()` HLSL functions.

To trigger an acceleration structure build on the GPU, call RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.RemoveInstance.
