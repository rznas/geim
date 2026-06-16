<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetGlobalRayTracingAccelerationStructure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the acceleration structure in shader code. |
| nameID | The name ID of the acceleration structure in shader code. Use Shader.PropertyToID to get this value. |
| accelerationStructure | The acceleration structure to set. |

### Description

Adds a command to bind the RayTracingAccelerationStructure object to all shader stages.

This command binds a RayTracingAccelerationStructure object to all shader stages. You can use the structure for inline ray tracing (ray queries) or as an argument in `TraceRay` calls in ray tracing shaders. The RayTracingAccelerationStructure object must be built using the BuildRayTracingAccelerationStructure method before calling this command.

Ray queries can be used to perform acceleration structure traversal and geometry intersection tests. To access this functionality, the HLSL code must be compiled using the `#pragma require inlineraytracing` directive or by using the built-in shader keyword `UNITY_DEVICE_SUPPORTS_INLINE_RAY_TRACING` (for example, #pragma multi_compile _ UNITY_DEVICE_SUPPORTS_INLINE_RAY_TRACING).

Additional resources: Shader.SetGlobalRayTracingAccelerationStructure, SystemInfo.supportsRayTracingShaders, SystemInfo.supportsInlineRayTracing.
