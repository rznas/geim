<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainUtils.TerrainMap.CreateFromPlacement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| originTerrain | Defines the grid origin and size, as well as group id if no filter is specified. |
| gridOrigin | Origin of the grid. |
| gridSize | Size of the grid. Typically takes the terrain size.x and size.z. |
| filter | Filter to be applied when populating the map. If null, the filter will fall back to matching terrains in the same group as the origin. |
| fullValidation | Validate the Terrain map. Default is true. |

### Returns

**void** The resulting Terrain map. Can return null when no Terrain objects pass the filter.

### Description

Creates a TerrainMap from the positions of all active Terrains.

Creates a TerrainMap of all the loaded Terrain objects that pass the filter validation.
