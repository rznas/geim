<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.Dispatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rayGenFunctionName | The name of the ray generation shader. |
| width | The width of the ray generation shader thread grid. |
| height | The height of the ray generation shader thread grid. |
| depth | The depth of the ray generation shader thread grid. |
| camera | Optional parameter used to setup camera-related built-in shader variables. |

### Description

Dispatches this RayTracingShader.

When a ray generation shader is executed, the GPU launches a 3D grid of threads. In HLSL, the values of width, height and depth can be retrieved using *DispatchRaysDimensions()* function. To retrieve the index of the ray generation shader invocation, *DispatchRaysIndex()* HLSL function can be used.

Width, height and depth must be above zero and width*height*depth <= 2^30.

When an optional Camera is specified as parameter, the built-in shader variables related to the Camera, Screen and Time are set up. Check Built-in shader variables for a complete list of these variables.

You can use the following pragma directives in a raytrace file:

- `#pragma max_recursion_depth <value>` - how many times you can recursively call `TraceRay` in HLSL. A value of 1 means you can call `TraceRay` from ray generation shaders only. Exceeding the declared recursion depth will cause undefined behavior, including GPU crashes.
- `#pragma enable_ray_tracing_shader_debug_symbols` - embeds Program Database (PBD) files into shader binaries to make shader debugging available in debugging tools like PIX.
- `#pragma only_renderers <values>` - compile this shader program only for given graphics APIs. For a list of values, see Targeting graphics APIs and platforms in HLSL.
- `#pragma exclude_renderers <values>` - do not compile this shader program for given graphics APIs. For a list of values, see Targeting graphics APIs and platforms in HLSL.
- `#pragma require <values>` - the minimum GPU features with which this shader is compatible. Replace <value> with one of the values: `native16bit`, `int64`, `int64bufferatomics`.
- `#pragma disable_ray_payload_size_checks` - disables ray payload size compatibility checks between different ray tracing shader types. Use this carefully, because removing the check can cause corrupt ray payload data when mixing incompatible ray tracing shaders using different ray payloads.

```csharp
#include "UnityShaderVariables.cginc"#pragma max_recursion_depth 1// Input
RaytracingAccelerationStructure g_SceneAccelStruct;
float g_Zoom; //Mathf.Tan(Mathf.Deg2Rad * Camera.main.fieldOfView * 0.5f)// Output
RWTexture2D<float4> g_Output;struct RayPayload
{
    float4 color;
};[shader("miss")]
void MainMissShader(inout RayPayload payload : SV_RayPayload)
{
    payload.color = float4(0, 0, 1, 1);
}[shader("raygeneration")]
void MainRayGenShader()
{
    uint2 launchIndex = DispatchRaysIndex().xy;
    uint2 launchDim = DispatchRaysDimensions().xy;    float2 frameCoord = float2(launchIndex.x, launchDim.y - launchIndex.y - 1) + float2(0.5, 0.5);    float2 ndcCoords = frameCoord / float2(launchDim.x - 1, launchDim.y - 1);    ndcCoords = ndcCoords * 2 - float2(1, 1);
    ndcCoords = ndcCoords * g_Zoom;    float aspectRatio = (float)launchDim.x / (float)launchDim.y;    float3 viewDirection = normalize(float3(ndcCoords.x * aspectRatio, ndcCoords.y, 1));    // Rotate the ray from view space to world space.
    float3 rayDirection = normalize(mul((float3x3)unity_CameraToWorld, viewDirection));    RayDesc ray;
    ray.Origin    = _WorldSpaceCameraPos;
    ray.Direction = rayDirection;
    ray.TMin      = 0.0f;
    ray.TMax      = 1000.0f;    RayPayload payload;
    payload.color = float4(1, 1, 1, 1);    uint missShaderIndex = 0;
    TraceRay(g_SceneAccelStruct, 0, 0xFF, 0, 1, missShaderIndex, ray, payload);    g_Output[frameCoord] = payload.color;
}struct AttributeData
{
    float2 barycentrics;
};[shader("closesthit")]
void DefaultClosestHitMain(inout RayPayload payload : SV_RayPayload, AttributeData attribs : SV_IntersectionAttributes)
{
    payload.color = float4(1, 0, 0, 1);
}
```

In this ray generation shader example, you calculate a ray direction based on the current 2D thread index returned by the `DispatchRaysIndex()` function. The output is red if there is a ray/triangle intersection. When there is no intersection, the GPU executes MainMissShader and the output is blue. This example uses the `unity_CameraToWorld` built-in shader variable. You must specify a Camera as an argument for the `Dispatch` function to set this value correctly.

Additional resources: SystemInfo.supportsRayTracingShaders, RayTracingAccelerationStructure.
