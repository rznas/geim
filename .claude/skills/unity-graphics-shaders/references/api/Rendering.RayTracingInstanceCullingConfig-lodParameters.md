<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig-lodParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parameters used for LOD culling.

LOD culling is enabled by using RayTracingInstanceCullingFlags.EnableLODCulling flag in RayTracingInstanceCullingConfig.flags. If the flag is not used then all the Renderers in the LODGroup will be processes and eventually added to the acceleration structure.

Additional resources: RayTracingAccelerationStructure.CullInstances, QualitySettings.lodBias.
