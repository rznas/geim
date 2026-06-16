<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingSettings-extractAO.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the Progressive Lightmapper extracts Ambient Occlusion to a separate lightmap. (Editor only).

When this is set to `true`, Unity saves the filtered Ambient Occlusion (AO) texture to disk as a separate lightmap, in addition to applying it to the regular lightmaps. When this is set to `false`, Unity does not save the filtered AO texture to disk separately.

Use this if you need to access the AO data separately.

Note that the values from aoExponentDirect and aoExponentIndirect are not applied; instead, the default values are used. The resulting lightmap is saved to disk in the same location as the other lightmaps.

This only works when autoGenerate is set to `false`, and ao is set to `true`.

Additional resources: Lighting Settings Asset, trainingDataDestination.
