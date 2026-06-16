<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingFlags.EnablePlaneCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Causes RayTracingAccelerationStructure.CullInstances to perform plane culling.

The Plane list is defined by RayTracingInstanceCullingConfig.planes.

A Renderer in the Scene is accepted to the acceleration structure if its AABB lies completely or partially on the positive side off all the Planes in the list.
