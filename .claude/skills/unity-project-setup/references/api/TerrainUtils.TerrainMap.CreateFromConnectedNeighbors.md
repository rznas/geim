<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainUtils.TerrainMap.CreateFromConnectedNeighbors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| originTerrain | Terrain that is given tile coordinate (0,0). |
| filter | Filter to apply when populating the map. If null, no filter is applied. |
| fullValidation | Validate the Terrain map. Default is true. |

### Returns

**void** The resulting Terrain map. Can return null when no Terrain objects pass the filter.

### Description

Creates a TerrainMap from the neighbors connected to the origin Terrain.

Creates a TerrainMap of all the Terrain neighbors connected to the origin Terrain that pass the filter validation.
