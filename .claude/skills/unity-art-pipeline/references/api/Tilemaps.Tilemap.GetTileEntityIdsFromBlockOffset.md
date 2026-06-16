<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetTileEntityIdsFromBlockOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position on the Tilemap. |
| blockOffset | Bounds of the offsets from the `position` on the Tilemap. |
| tileEntityIds | Array to hold the resulting EntityIds. |

### Description

Gets a block of EntityIds at an offset from the `position` and stores them into the given array of EntityIds in the same order.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public static void GetTileEntityIdFromBlockOffsetsExample(Tilemap tilemap, Vector3Int position, Tile tile)
    {
        int count = 9;
        NativeArray<EntityId> entityIds = new NativeArray<EntityId>(count, Allocator.Temp);
        for (var y = -1; y < 1; y++)
        {
            for (var x = -1; x < 1; x++)
            {
                var offset = new Vector3Int(x, y, 0);
                tilemap.SetTile(position + offset, tile);
            }
        }
        var block = new BoundsInt(new Vector3Int(-1, -1, 0), new Vector3Int(3, 3, 1));
        tilemap.GetTileEntityIdsFromBlockOffset(position, block, entityIds);        for (var i = 0; i < count; i++)
        {
            Debug.Log($"The ids for the Tile placed are equal ({(entityIds[i] == tile.GetEntityId()).ToString()})");
        }
    }
}
```
