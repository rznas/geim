<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.Build.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Builds acceleration structures on the GPU. Allocates any GPU memory required for storing acceleration structure data.

To ensure that the acceleration structure is up to date, call this method before using the acceleration structure in ray tracing shaders (for example before a RayTracingShader.Dispatch call) or when using inline ray tracing.

Additional resources: SystemInfo.supportsRayTracingShaders, SystemInfo.supportsInlineRayTracing, CommandBuffer.BuildRayTracingAccelerationStructure.
