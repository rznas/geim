<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-finalGather.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether the final light bounce of the global illumination calculation is calculated at the same resolution as the baked lightmap. (Editor only).

Final gather fires additional rays from the position of final lightmap texels before compositing with Enlighten Realtime Global Illumination’s lower resolution indirect lightmap. This can improve the appearance of effects such as indirect shadowing and mitigate potential light leaks. However, this also increases the amount of time needed to bake lighting.

Setting for LightingSettings.Lightmapper.Enlighten.

Additional resources: LightingSettings.finalGatherFiltering, LightingSettings.finalGatherRayCount.
