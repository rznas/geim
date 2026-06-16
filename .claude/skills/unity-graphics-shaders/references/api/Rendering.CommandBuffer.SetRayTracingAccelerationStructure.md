<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRayTracingAccelerationStructure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayTracingShader | The RayTracingShader to set parameter for. |
| name | The name of the acceleration structure in the shader code. |
| nameID | Property name ID. Use Shader.PropertyToID to get this ID. |
| rayTracingAccelerationStructure | The RayTracingAccelerationStructure object to be set. |
| computeShader | The ComputeShader object to set the parameter for. |
| kernelIndex | Which kernel the acceleration structure is being set for. |

### Description

Adds a command to set the RayTracingAccelerationStructure to be used in a RayTracingShader or a ComputeShader.

When using a RayTracingShader, the RayTracingAccelerationStructure specified as argument is visible globally in all ray tracing shader types (e.g. closest hit, any hit, miss, etc.).

When using a ComputeShader, it binds a RayTracingAccelerationStructure to a ComputeShader kernel to be used for Inline Ray Tracing (Ray Queries). This functionality is available on platforms where this feature is supported. Use SystemInfo.supportsInlineRayTracing to check this.

In compute shaders, ray queries can be used to perform acceleration structure traversal and geometry intersection tests. To access this functionality, the HLSL code needs to be compiled using `#pragma require inlineraytracing`.

```csharp
#include "UnityRayQuery.cginc"#pragma require inlineraytracing
#pragma kernel CSRayQueryTestRaytracingAccelerationStructure g_AccelStruct;
RWTexture2D<float> g_Output;[numthreads(8,4,1)]
void CSRayQueryTest (uint3 id : SV_DispatchThreadID)
{
    const uint rayFlags = RAY_FLAG_ACCEPT_FIRST_HIT_AND_END_SEARCH;
    UnityRayQuery<rayFlags> rayQuery;    RayDesc ray;
    ray.Origin = float3(0, 0, 0);
    ray.Direction = float3(0, 1, 0);
    ray.TMin = 0;
    ray.TMax = 10000;    rayQuery.TraceRayInline(g_AccelStruct, rayFlags, 0xff, ray);
    rayQuery.Proceed();    g_Output[id.xy] = (rayQuery.CommittedStatus() == COMMITTED_TRIANGLE_HIT) ? 1.0 : 0.0;
}
```

This is a simple compute shader that checks if a ray with the origin at (0, 0, 0) and direction (0, 1, 0) intersects any geometry consisting of triangles. The `g_AccelStruct` shader object can be bound using the SetRayTracingAccelerationStructure function. The compute shader can be dispatched if SystemInfo.supportsInlineRayTracing is true.

Additional resources: RayTracingAccelerationStructure, SystemInfo.supportsRayTracingShaders, SystemInfo.supportsInlineRayTracing.
