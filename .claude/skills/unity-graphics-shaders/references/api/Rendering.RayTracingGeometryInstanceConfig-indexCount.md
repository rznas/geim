<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingGeometryInstanceConfig-indexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The amount of indices from indexBuffer that defines this ray tracing geometry instance.

Use -1 to instruct Unity to use all the indices from indexBuffer when building the acceleration structure associated with the ray tracing instance. If the value is positive, it must be a multiple of 3 and together with indexStart it must define a valid range into indexBuffer.
