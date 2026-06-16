<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAABBsInstanceConfig-mask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ray tracing instance mask.

During acceleration structure traversal, the GPU accepts or rejects geometry based on the instance mask and InstanceInclusionMask specified when you call the `TraceRay` HLSL function, or when you execute ray queries while calling the `TraceRayInline` HLSL function.
