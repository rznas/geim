<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapParameters-pushoff.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The distance to offset the ray origin from the geometry when performing ray tracing, in modelling units. Unity applies the offset to all baked lighting: direct lighting, indirect lighting, environment lighting and ambient occlusion.

Changing the value of the offset can fix unwanted artifacts on faraway geometry that are the result of limited floating point precision. These artifacts resemble incorrect ambient occlusion or shadowing.
 
 The range of valid values is 0.0 - 1.0, inclusive.
