<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig-instanceTests.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of RayTracingInstanceCullingTest objects used add Renderers to the acceleration structure based on their layer, ShadowCastingMode and Material type.

Typically, each ray tracing effect can use a dedicated RayTracingInstanceCullingTest configuration. If the array is empty then RayTracingAccelerationStructure.CullInstances doesn't have any effect.

For each test that passes, its instanceMask value will be ORed into a final 8-bit ray tracing instance mask. When casting rays on the GPU using *TraceRay* HLSL function, the *instanceInclusionMask* argument of *TraceRay* is ANDed with the final 8-bit instance mask to include or reject ray tracing instances during acceleration structure traversal. This way, an acceleration structure can be used by multiple ray tracing effects, each effect potentially affecting different Materials types or layers.

Additional resources: RayTracingAccelerationStructure.
