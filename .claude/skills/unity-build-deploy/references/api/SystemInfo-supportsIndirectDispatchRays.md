<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsIndirectDispatchRays.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns `true` if the graphics system supports indirect ray tracing dispatch. (Read Only)

This feature enables scenarios where shaders generate ray tracing data (for example ray buffers) and call arguments for the `DispatchRays` method directly into a GPU buffer allowing a GPU-driven execution flow.

In DirectX 12, this feature is part of DirectX Raytracing (DXR) Tier 1.1.

Additional resources: RayTracingShader.DispatchIndirect, CommandBuffer.DispatchRays, SystemInfo.supportsRayTracingShaders.
