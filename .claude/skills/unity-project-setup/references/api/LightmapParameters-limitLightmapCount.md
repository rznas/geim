<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapParameters-limitLightmapCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If enabled, objects sharing the same lightmap parameters will be packed into LightmapParameters.maxLightmapCount lightmaps.

This setting can be used to limit the number of generated lightmaps. This is achieved by iteratively scaling down the UV layouts until they fit into the specified number of allowed lightmaps.
