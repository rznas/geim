<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.ManagementMode.Automatic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Automatically populates and updates the RayTracingAccelerationStructure.

If ManagementMode is Automatic, then Unity adds all supported Renderers in the Scene to the RayTracingAccelerationStructure as you create them, and removes them as you delete them. Unity updates the RayTracingAccelerationStructure and all transforms of instances within it at the beginning of rendering each frame.
