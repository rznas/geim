<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.Settings-layerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A 32-bit mask that specifies which layers a ray tracing instance must be on in order to be added to the RayTracingAccelerationStructure.

Unity interprets the mask as binary. So a mask value of -1 allows you to add objects from all layers to the structure, a value of 1 only allows objects on layer 0, and a value of 2 only allows objects on layer 1, for example.
