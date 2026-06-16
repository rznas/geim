<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingFlags.EnableSphereCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Causes RayTracingAccelerationStructure.CullInstances to perform sphere culling.

The sphere is defined by RayTracingInstanceCullingConfig.sphereCenter and RayTracingInstanceCullingConfig.sphereRadius values.

A Renderer in the Scene is accepted to the acceleration structure if its AABB lies completely or partially inside the sphere.
