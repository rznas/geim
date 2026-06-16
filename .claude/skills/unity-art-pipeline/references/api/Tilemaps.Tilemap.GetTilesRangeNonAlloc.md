<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetTilesRangeNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| startPosition | The starting position of the range to retrieve Tiles from. |
| endPosition | The ending position of the range to retrieve Tiles from. |
| positions | The positions of Tiles within the given range. |
| tiles | The Tiles within the given range. |

### Returns

**int** Returns the number of positions and Tiles retrieved.

### Description

Retrieves an array of Tiles within the given range, inclusive of the Cells at both the starting position and the ending positions. This method begins at the given starting position and iterates through all available Z Positions, then iterates through the X and Y positions until it reaches the ending position.

This method begins at the given starting position, and is inclusive of the Cell at this starting position. It retrieves all Tiles at a given Cell, including Tiles at all Z Positions at that Cell position. After retrieving all Tiles available at the current Cell, the method continues iterating onto the next Cell along the same row until it reaches the rightmost bounds of the Tilemap. After reaching the end of the Tilemap along the initial row of Cells, the method then iterates along the next row of Cells above the initial row, starting from the leftmost edge of the Tilemap. The method continues iterating in this pattern until it reaches the Cell at the ending position of the given range.

If the starting position's value is higher than the ending position's value, then the method begins with the Cell at the starting position but iterates in the opposite direction of the usual method, ending when it reaches the Cell at the ending position.

If the size of the arrays passed in as parameters are less than the number of Tiles within the range, the arrays will not be resized and the results will be limited.

```csharp
// Retrieves all tiles with a range on the tilemap and prints out the positions and tiles to console
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        SetTiles(tilemap);        Vector3Int[] positions = new Vector3Int[16];
        TileBase[] tiles = new TileBase[16];
        var count = tilemap.GetTilesRangeNonAlloc(new Vector3Int(0, 0, 0), new Vector3Int(5, 1, 0), positions, tiles);
        for (int index = 0; index < count; index++)
        {
            print(positions[index]);
            print(tiles[index]);
        }
    }    // Sets Tiles in a 10 by 10 block
    void SetTiles(Tilemap tilemap)
    {
        Tile tile = ScriptableObject.CreateInstance<Tile>();
        TileBase[] tiles = new TileBase[10 * 10];
        for (int index = 0; index < tiles.Length; index++)
        {
            tiles[index] = tile;
        }
        tilemap.SetTilesBlock(new BoundsInt(0, 0, 0, 10, 10, 1), tiles);
    }
}
```

In the example above, GetTilesRangeNonAlloc with a starting position (0, 0, 0) and an ending position (5, 1, 0) will return an array of sixteen Tiles: ten Tiles from (0, 0, 0) to (10, 0, 0), as well as the six Tiles from (0, 1, 0) to (5, 1, 0).

If the starting and ending positions were swapped, then GetTilesRangeNonAlloc with starting position (5, 1, 0) and ending position (0, 0, 0) will return an array of sixteen Tiles: six Tiles from (5, 1, 0) to (0, 1, 0), as well as the ten Tiles from (10, 0, 0) to (0, 0, 0).
