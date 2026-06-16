<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetTiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The bounds from which to retrieve the tiles. |
| allocator | The Allocator type used to allocate the memory for the TileArray. You must use Allocator.Temp, Allocator.Domain, or Allocator.Persistent. The default value is Allocator.Temp. |

### Returns

**TileArray** A TileArray containing all the TileBase instances in the bounds.

### Description

Retrieves all tiles within the given bounds as a TileArray.

Use this method to efficiently retrieve tiles as a batch, rather than calling GetTile for each position. This can significantly reduce overhead when processing large areas.

```csharp
// Retrieves all Tiles from an area on the Tilemap and prints out the Tiles to console
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample1 : MonoBehaviour
{
    public BoundsInt area;    void GetTilesExample1()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        using var tiles = tilemap.GetTiles(area); // Will call TileArray.Dispose() once it is out of scope
        foreach (var tile in tiles)
        {
            print(tile != null ? tile.name : "Empty"); 
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The bounds to retrieve from. |
| memoryLabel | Memory label used for profiling and tracking this memory allocation in Unity. |

### Returns

**TileArray** TileArray containing the TileBases in the bounds.

### Description

Retrieves a TileArray within the given bounds.

This is meant for more a performant way to get Tiles as a batch, when compared to calling GetTile for every single position.

```csharp
// Retrieves all Tiles from an area on the Tilemap and prints out the Tiles to console
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample2 : MonoBehaviour
{
    static readonly MemoryLabel kMemoryLabel = new MemoryLabel("TilemapExample", "Get", Allocator.Domain);    public BoundsInt area;    void GetTilesExample2()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        using Tilemap.TileArray tiles = tilemap.GetTiles(area, kMemoryLabel); // Will call TileArray.Dispose() once it is out of scope
        foreach (TileBase tile in tiles)
        {
            print(tile != null ? tile.name : "Empty"); 
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The bounds from which to retrieve the tiles. |
| positions | A PositionArray containing the position of each TileBase in the bounds. |
| tiles | The TileArray containing all the TileBase instances in the bounds. |
| allocator | The Allocator type used to allocate the memory for the TileArray. You must use Allocator.Temp, Allocator.Domain, or Allocator.Persistent. The default value is Allocator.Temp. |
| withinBounds | Whether to retrieve the tiles within the given bounds. |

### Returns

**int** The number of positions and tiles retrieved.

### Description

Retrieves all tiles within the given bounds as a TileArray, with their corresponding positions in a PositionArray. Only positions containing a Tile are included.

Use this method to efficiently retrieve tiles as a batch, rather than calling GetTile for each position. This can significantly reduce overhead when processing large areas.

```csharp
// Retrieves all Tiles from an area on the Tilemap and prints out the Tiles to console
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample3 : MonoBehaviour
{
    public BoundsInt area = new BoundsInt(0, 0, 0, 5, 5, 1);    void GetTilesExample3()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        int count = tilemap.GetTiles(area, out Tilemap.PositionArray positions, out Tilemap.TileArray tiles);
        for (int i = 0; i < count; i++)
        {
            print($"Position: {positions[i]}, Tile: {tiles[i].name}"); 
        }
        // Manually dispose allocated arrays
        positions.Dispose();
        tiles.Dispose();
    }
}
```

If `withinBounds` is set to `true`, this returns all tiles with the positions from `bounds.allPositionsWithin`. These positions are within the bounds of (0, 0, 0) to (5, 5, 1), where `x` and `y` are between 0 and 4, inclusive. If `withinBounds` is set to `false`, this returns all tiles from the start of the bounds (0, 0, 0) to the end of the bounds (5, 5, 1) inclusive. Tiles outside the Tilemap's bounds might be included if they fall within the start and end of the given bounds. Positions such as (6, 0, 0), (-1, 1, 0), or (-4, 5, 0) are included, but positions such as (-2, 0, 0) or (6, 6, 0) are excluded because they either come before the start of the given bounds or after the end of the given bounds.

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The bounds from which to retrieve the tiles. |
| positions | A PositionArray containing the position of each TileBase in the bounds. |
| tiles | The TileArray containing all the TileBase instances in the bounds. |
| memoryLabel | Memory label used for profiling and tracking this memory allocation in Unity. |
| withinBounds | Whether to retrieve the tiles within the given bounds. The default value is True. |

### Returns

**int** The number of positions and tiles retrieved.

### Description

Retrieves all tiles within the given bounds as a TileArray, with their corresponding positions in a PositionArray. Only positions containing a Tile are included.

Use this method to efficiently retrieve tiles as a batch, rather than calling GetTile for each position. This can significantly reduce overhead when processing large areas.

```csharp
// Retrieves all Tiles from an area on the Tilemap and prints out the Tiles to console
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample4 : MonoBehaviour
{
    static readonly MemoryLabel kMemoryLabel = new MemoryLabel("TilemapExample", "Get", Allocator.Domain);    public BoundsInt area = new BoundsInt(0, 0, 0, 5, 5, 1);    void GetTilesExample4()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        var count = tilemap.GetTiles(area, out var positions, out var tiles, kMemoryLabel);
        for (var i = 0; i < count; i++)
        {
            print($"Position: {positions[i]}, Tile: {tiles[i].name}"); 
        }
        // Manually dispose allocated arrays
        positions.Dispose();
        tiles.Dispose();
    }
}
```
