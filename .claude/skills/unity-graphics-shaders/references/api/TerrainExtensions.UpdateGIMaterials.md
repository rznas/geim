<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainExtensions.UpdateGIMaterials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Schedules an update of the albedo and emissive Textures of a system that contains the Terrain.

The second overload specifies a region of the Terrain that needs to be updated. This makes sure that only the systems that overlap with the specified rectangle get updated, which could help improve performance. The coordinates are specified the same way as in TerrainData.SetAlphamaps.
