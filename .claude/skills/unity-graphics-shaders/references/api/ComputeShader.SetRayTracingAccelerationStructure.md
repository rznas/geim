<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeShader.SetRayTracingAccelerationStructure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| kernelIndex | For which kernel the RayTracingAccelerationStructure is being set. See FindKernel. |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| accelerationStructure | The RayTracingAccelerationStructure object to bind. |
| name | Resource name in shader code. |

### Description

Sets a RayTracingAccelerationStructure to be used for Inline Ray Tracing (Ray Queries).

Use SystemInfo.supportsInlineRayTracing to check at runtime if Inline Ray Tracing is supported by the system.

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

Additional resources: CommandBuffer.SetGlobalRayTracingAccelerationStructure, SystemInfo.supportsInlineRayTracing.
