<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.AddInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetRenderer | The Renderer to add to the RayTracingAccelerationStructure. |
| enableTriangleCulling | A bool that indicates whether front/back face culling for this ray tracing instance is enabled. The culling takes place when the GPU performs a ray-triangle intersection test. Culling is enabled (true) by default. |
| frontTriangleCounterClockwise | A bool that indicates whether to flip the way triangles face in this ray tracing instance. If this is set to true, front-facing triangles will become back-facing and vice versa. Set to false by default. |
| mask | An 8-bit mask you can use to selectively intersect the ray tracing instance associated with the target Renderer with rays that only pass the mask. All rays are enabled (0xff) by default. |
| subMeshFlags | A list of flags that control the shader execution behaviour when a ray intersects a sub-mesh geometry. See RayTracingSubMeshFlags for additional information. |
| id | An optional instance ID value accessed with `InstanceID()` HLSL function. |

### Returns

**int** A value representing a handle that you can use to perform later actions (e.g. RemoveInstance), or 0 if the instance is not added successfully.

### Description

Adds a ray tracing instance to the RayTracingAccelerationStructure.

Ray tracing instances in the acceleration structure contain an 8-bit user defined instance mask. The `TraceRay()` HLSL function has an 8-bit input parameter, `InstanceInclusionMask` which gets ANDed with the instance mask from any ray tracing instance that is a candidate for intersection during acceleration structure traversal on the GPU. If the result of the AND operation is zero, the intersection is ignored.

When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

Additional resources: RayTracingAccelerationStructure.RemoveInstance, RayTracingSubMeshFlags.

### Parameters

| Parameter | Description |
| --- | --- |
| config | The common parameters that this Mesh ray tracing instance uses. |
| matrix | The transformation matrix of the ray tracing instance. |
| prevMatrix | The previous frame transformation matrix of the ray tracing instance that you can use to compute motion vectors in shader code. |
| id | An optional instance ID value that you can access with `InstanceID()` HLSL function. |

### Returns

**void** A value representing a handle that you can use to perform later actions (e.g. RemoveInstance, UpdateInstancePropertyBlock or UpdateInstanceTransform), or 0 if the instance is not added successfully.

### Description

Adds a ray tracing instance associated with a Mesh to the RayTracingAccelerationStructure.

The config function argument specifies the relevant Mesh and associated parameters.

When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

Additional resources: RayTracingAccelerationStructure.RemoveInstance, RayTracingShader.Dispatch.

### Parameters

| Parameter | Description |
| --- | --- |
| config | The common parameters that this geometry ray tracing instance uses. |
| matrix | The transformation matrix of the ray tracing instance. |
| prevMatrix | The previous frame transformation matrix of the ray tracing instance that you can use to compute motion vectors in shader code. |
| id | An optional instance ID value that you can access with `InstanceID()` HLSL function. |

### Returns

**void** A value representing a handle that you can use to perform later actions (e.g. RemoveInstance, UpdateInstancePropertyBlock or UpdateInstanceTransform), or 0 if the instance is not added successfully.

### Description

Adds a ray tracing instance to the RayTracingAccelerationStructure.

The config function argument specifies the relevant triangle geometry data (vertex and index buffers) and associated parameters.

When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

Additional resources: RayTracingAccelerationStructure.RemoveInstance, RayTracingShader.Dispatch.

### Parameters

| Parameter | Description |
| --- | --- |
| config | The common parameters that this AABBs ray tracing instance uses. |
| matrix | The transformation matrix of the ray tracing instance. |
| id | An optional instance ID value that you can access with `InstanceID()` HLSL function. |

### Returns

**void** A value representing a handle that can be used to perform later actions (e.g. RemoveInstance, UpdateInstancePropertyBlock or UpdateInstanceTransform), or 0 if the instance is not added successfully.

### Description

Adds a ray tracing instance associated with a list of axis-aligned bounding boxes (AABBs) to the RayTracingAccelerationStructure for procedural geometry generation using intersection shaders.

Define the AABB list in the GraphicsBuffer you set the config.aabbBuffer parameter to. Unity uses the AABBs to build an acceleration structure for this ray tracing instance.

The AABBs are defined in local space and can be transformed using the matrix argument. Use RayTracingAccelerationStructure.UpdateInstanceTransform to update the transformation of the ray tracing instance at a later time.

Unity copies the contents of the MaterialPropertyBlock in the config.materialProperties parameter into the ray tracing instance when this function is called. Any subsequent changes to the MaterialPropertyBlock object that was passed as argument are not taken into account. Use RayTracingAccelerationStructure.UpdateInstancePropertyBlock to updated the properties again at a later time.

When a ray intersects one of the AABBs in the list during a ray tracing dispatch, the GPU invokes an intersection shader. You can retrieve the index of a discrete AABB in the acceleration structure with the `PrimitiveIndex()` HLSL function.

When you have added all required instances, use RayTracingAccelerationStructure.Build or CommandBuffer.BuildRayTracingAccelerationStructure to build the acceleration structure on the GPU.

Additional resources: RayTracingAccelerationStructure.RemoveInstance, RayTracingShader.Dispatch.
