<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DynamicGI.UpdateMaterials.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | The Renderer to use when searching for a system to update. |
| terrain | The Terrain to use when searching for systems to update. |

### Description

Schedules an update of the albedo and emissive textures of a system that contains the renderer or the terrain.

The third overload specifies a region of the terrain that needs to be updated. This makes sure that only the systems that overlap with the specified rectangle get updated, which could help improve performance. The coordinates are specified the same way as in TerrainData.SetAlphamaps.
