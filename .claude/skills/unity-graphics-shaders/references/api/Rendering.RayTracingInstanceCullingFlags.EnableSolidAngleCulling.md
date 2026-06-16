<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingFlags.EnableSolidAngleCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Causes RayTracingAccelerationStructure.CullInstances to perform solid-angle culling.

The minimum solid angle in degrees is defined in the RayTracingInstanceCullingConfig.minSolidAngle property, and its apex is defined by the cameraPosition value from RayTracingInstanceCullingConfig.lodParameters.

A Renderer in the Scene is accepted to the acceleration structure if its solid angle is larger than RayTracingInstanceCullingConfig.minSolidAngle.
