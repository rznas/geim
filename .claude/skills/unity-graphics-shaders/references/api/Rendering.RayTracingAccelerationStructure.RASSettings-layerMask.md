<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.RASSettings-layerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A 32-bit mask that controls which layers a GameObject must be on in order to be added to the RayTracingAccelerationStructure.

The mask is interpreted as binary, so a mask value of -1 lets you add renderers from all layers, a value of 1 only allows objects on layer 0, a value of 2 only allows objects on layer 1, and so on.
