<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingTest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A testing configuration used in RayTracingAccelerationStructure.CullInstances for adding Renderers to an acceleration structure based on their layer, ShadowCastingMode and Material type.

Typically, each ray tracing effect can use a dedicated RayTracingInstanceCullingTest configuration.

If the test passes, the value of instanceMask will be ORed into a final 8-bit ray tracing instance mask. When casting rays on the GPU using *TraceRay* HLSL function, the *instanceInclusionMask* argument of *TraceRay* is ANDed with the final 8-bit instance mask to include or reject ray tracing instances during acceleration structure traversal.

Additional resources: RayTracingAccelerationStructure.

### Properties

| Property | Description |
| --- | --- |
| allowAlphaTestedMaterials | Whether to allow Renderers that use alpha tested Materials. |
| allowOpaqueMaterials | Whether to allow Renderers that use opaque Materials. |
| allowTransparentMaterials | Whether to allow Renderers that use transparent Materials. |
| allowVisualEffects | Whether to allow VFXRenderers. |
| instanceMask | An instance mask which affects ray-instance masking during ray tracing on the GPU. |
| layerMask | A value that indicates which layers are accepted by this testing configuration. |
| shadowCastingModeMask | A value that indicates which ShadowCastingMode values are acccepted by this testing configuration. |
