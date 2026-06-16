<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-finalGatherRayCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the number of rays emitted for every final gather point. A final gather point is a lightmap texel in the final, composited lightmap. (Editor only).

Final gather fires additional rays from the position of final lightmap texels before compositing with Enlighten Realtime Global Illumination’s lower resolution indirect lightmap. This can improve effects such as indirect shadowing and mitigate potential light leaks. When enabled, visual quality is improved at the cost of additional time required to bake the lighting.

Setting for LightingSettings.Lightmapper.Enlighten.

Additional resources: LightingSettings.finalGather, LightingSettings.finalGatherFiltering.
