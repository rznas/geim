<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingConfig-minSolidAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum solid angle in degrees that Unity uses for culling ray tracing instances associated with the Renderers in a Scene.

If the projected solid angle of a Renderer relative to cameraPosition value from RayTracingInstanceCullingConfig.lodParameters is smaller than minSolidAngle then the Renderer is not added to the acceleration structure.

To enable solid angle culling, use the RayTracingInstanceCullingFlags.EnableSolidAngleCulling flag in RayTracingInstanceCullingConfig.flags.

Additional resources: RayTracingAccelerationStructure.CullInstances.
