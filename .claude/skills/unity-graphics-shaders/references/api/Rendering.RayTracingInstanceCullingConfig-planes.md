<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig-planes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of planes used for culling ray tracing instances associated with the Renderers in a Scene.

To enable plane culling, use RayTracingInstanceCullingFlags.EnablePlaneCulling flag in RayTracingInstanceCullingConfig.flags.

A Renderer in the Scene is accepted to the acceleration structure if its AABB lies completely or partially on the positive side off all the Planes in the array.

Additional resources: Plane, RayTracingAccelerationStructure.CullInstances.
