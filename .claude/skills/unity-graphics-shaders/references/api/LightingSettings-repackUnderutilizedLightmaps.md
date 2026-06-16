<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-repackUnderutilizedLightmaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When enabled, Unity attempts to repack lightmaps that are mostly empty at a lower resolution.

Enabling this setting may produce lightmap layouts that use less memory, but will increase the time taken to calculate lightmap packing, and may also increase the number of lightmaps.

This setting only has an effect when using LightingSettings.LightmapPackingMethod.XAtlas.

Additional resources: LightingSettings.lightmapPackingMethod, LightingSettings.lightmapPackingMode.
