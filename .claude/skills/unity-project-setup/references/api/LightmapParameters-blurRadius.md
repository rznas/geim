<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapParameters-blurRadius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The radius (in texels) of the post-processing filter that blurs baked direct lighting.

The filter is aware of geometry and visibility between texels and thus light leaking is reduced. In general, a value in the range from 2 to 8 leads to good results. Note that the processing time depends on the filter size squared and thus larger values should be avoided.
