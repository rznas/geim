<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.ITilemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class passed onto Tiles when information is queried from the Tiles.

This handles editor preview tiles when painting on a Tilemap in Editor mode.

### Properties

| Property | Description |
| --- | --- |
| cellBounds | Returns the boundaries of the Tilemap in cell size. |
| localBounds | Returns the boundaries of the Tilemap in local space size. |
| origin | The origin of the Tilemap in cell position. |
| size | The size of the Tilemap in cells. |

### Constructors

| Constructor | Description |
| --- | --- |
| ITilemap | Initializes and returns an instance of ITilemap. |

### Public Methods

| Method | Description |
| --- | --- |
| GetColor | Gets the color of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetComponent | Returns the component of type T if the GameObject of the tile map has one attached, null if it doesn't. |
| GetSprite | Gets the Sprite used in a Tile given the XYZ coordinates of a cell in the Tilemap. |
| GetTile | Gets the Tile at the given XYZ coordinates of a cell in the Tilemap. |
| GetTileEntityId | Gets the EntityId of the Tile at the given xyz coordinates of a cell in the Tilemap. |
| GetTileFlags | Gets the Tile Flags of the Tile at the given position. |
| GetTransformMatrix | Gets the transform matrix of a Tile given the XYZ coordinates of a cell in the Tilemap. |
| RefreshTile | Refreshes a Tile at the given XYZ coordinates of a cell in the :Tilemap. |
| RefreshTiles | Refreshes Tiles at the given xyz coordinates of cells in the Tilemap from the array. |

### Operators

| Operator | Description |
| --- | --- |
| ITilemap | Tilemap can be implicitly converted to ITilemap. |
