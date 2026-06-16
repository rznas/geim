<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetUsedTiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator type used to allocate the memory for the SpriteArray. The default value is Allocator.Temp. |

### Returns

**TileArray** A TileArray containing the all unique Tile instances used in the Tilemap.

### Description

Returns a TileArray containing the unique Tile instances used in this Tilemap. The array is allocated using the given Allocator.

The Allocator must be either Allocator.Temp, Allocator.Domain or Allocator.Persistent.

```csharp
// Retrieves all used Tiles from a Tilemap and prints out the Tile names to console
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample1 : MonoBehaviour
{
    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        using var usedTiles = tilemap.GetUsedTiles(); // Will call TileArray.Dispose() once it is out of scope
        foreach (var tile in usedTiles)
        {
            print(tile.name);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| memoryLabel | Memory label used for profiling and tracking this memory allocation in Unity. |

### Returns

**TileArray** TileArray containing the unique Tiles used in the Tilemap.

### Description

Returns a TileArray allocated by the given `MemoryLabel` with the unique Tiles used in the Tilemap.

```csharp
// Retrieves all used Tiles from a Tilemap and prints out the Tile names to console
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample2 : MonoBehaviour
{
    static readonly MemoryLabel kMemoryLabel = new MemoryLabel("TilemapExample", "Get", Allocator.Domain);    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        using var usedTiles = tilemap.GetUsedTiles(kMemoryLabel); // Will call TileArray.Dispose() once it is out of scope
        foreach (var tile in usedTiles)
        {
            print(tile.name);
        }
    }
}
```
