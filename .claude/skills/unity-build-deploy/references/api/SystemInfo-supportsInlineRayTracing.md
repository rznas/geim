<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsInlineRayTracing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is inline ray tracing (ray query) supported? (Read Only)

Inline ray tracing is an alternative form of ray tracing available in compute shaders and rasterization stages through the `RayQuery` HLSL object. In DirectX 12 (DX12), this property corresponds to DirectX Raytracing (DXR) Tier 1.1 support.

The `RayQuery` object is defined in HLSL when you use the DirectX 12 and DirectX Shader Compiler (DXC). Other shader compilers that different platforms use either don’t define the `RayQuery` object or its name is different. Because of this, the recommended approach is to include the `UnityRayQuery.cginc` header and use the `UnityRayQuery` object instead of `RayQuery`.

Additional resources: Shader.SetGlobalRayTracingAccelerationStructure, ComputeShader.SetRayTracingAccelerationStructure, SystemInfo.supportsRayTracingShaders.
