<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader-maxRecursionDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of ray bounces this shader can trace (Read Only).

This value can be set in a .raytrace file using `#pragma max_recursion_depth` followed by a positive number.

If you set `max_recursion_depth` value too low, your graphics device may go into removed state, and crash Unity. To generate rays, your `max_recursion_depth` value must be at least 0. However, if you invoke the `TraceRay` HLSL function inside a closest hit shader (for example) your `max_recursion_depth` value must be at least 1.
