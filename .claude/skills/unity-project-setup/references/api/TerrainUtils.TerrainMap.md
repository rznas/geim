<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainUtils.TerrainMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Type for mapping 2D (X,Z) tile coordinates to a Terrain object.

### Properties

| Property | Description |
| --- | --- |
| terrainTiles | Mapping from TileCoord to Terrain. |

### Public Methods

| Method | Description |
| --- | --- |
| GetTerrain | Retrieves the Terrain object corresponding to the tile coordinates (tileX,tileZ). |

### Static Methods

| Method | Description |
| --- | --- |
| CreateFromConnectedNeighbors | Creates a TerrainMap from the neighbors connected to the origin Terrain. |
| CreateFromPlacement | Creates a TerrainMap from the positions of all active Terrains. |
