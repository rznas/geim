<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetShaderPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| passName | The Shader Pass to use when executing ray tracing shaders. |

### Description

Selects which Shader Pass to use when executing ray/geometry intersection shaders.

This name is specified in the ShaderLab shaders used by Materials applied to Renderers used in ray tracing. If a shader doesn't have a Shader Pass with the specified name, then no ray/geometry intersection code is executed. This method must be called before calling RayTracingShader.DispatchRays.

The Shader Pass code can include optional closest hit or any hit shaders.

For procedural ray-traced geometries, an intersection shader must be authored. The engine code will automatically enable a keywork named `RAY_TRACING_PROCEDURAL_GEOMETRY` if the geometry is proceduraly ray-traced.

The following example shader code returns the color red.

```csharp
SubShader
{
    Pass
    {
        // RayTracingShader.SetShaderPass must use this name in order to execute the ray tracing shaders from this Pass.
        Name "Test"        // Add tags to identify the shaders to use for ray tracing.
        Tags{ "LightMode" = "RayTracing" }        HLSLPROGRAM        #pragma multi_compile_local RAY_TRACING_PROCEDURAL_GEOMETRY        // Specify this shader is a raytracing shader.
        #pragma raytracing test        struct AttributeData
        {
            float2 barycentrics;
        };        struct RayPayload
        {
            float4 color;
        };#if RAY_TRACING_PROCEDURAL_GEOMETRY
        [shader("intersection")]
        void IntersectionMain()
        {
            AttributeData attr;
            attr.barycentrics = float2(0, 0);
            ReportHit(0, 0, attr);
        }
#endif        [shader("closesthit")]
        void ClosestHitMain(inout RayPayload payload : SV_RayPayload, AttributeData attribs : SV_IntersectionAttributes)
        {
            payload.color = float4(1, 0, 0, 1);
        }        ENDHLSL
    }
}
```
