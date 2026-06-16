<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingTest-instanceMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An instance mask which affects ray-instance masking during ray tracing on the GPU.

Typically, each ray tracing effect can use a dedicated RayTracingInstanceCullingTest configuration and different instanceMask value.

If the test passes, the instanceMask value will be ORed into a final 8-bit ray tracing instance mask. When casting rays on the GPU using *TraceRay* HLSL function, the *instanceInclusionMask* argument of *TraceRay* is ANDed with the final 8-bit instance mask to include or reject ray tracing instances during acceleration structure traversal.
