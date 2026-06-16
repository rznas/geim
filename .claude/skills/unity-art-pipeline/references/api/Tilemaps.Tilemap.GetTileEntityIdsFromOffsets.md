<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetTileEntityIdsFromOffsets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position on the Tilemap. |
| offsets | Offsets from the `position` on the Tilemap. |
| tileEntityIds | Array to hold the resulting EntityIds. |

### Description

Gets an array of EntityIds at an offset from the `position` and stores them into the given array of EntityIds in the same order.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public static void GetTileEntityIdFromOffsetsExample(Tilemap tilemap, Vector3Int position, Tile tile)
    {
        int count = 5;
        NativeArray<Vector3Int> offsets = new NativeArray<Vector3Int>(count, Allocator.Temp);
        NativeArray<EntityId> entityIds = new NativeArray<EntityId>(count, Allocator.Temp);
        for (var i = 0; i < count; i++)
        {
            offsets[i] = new Vector3Int(i, 0, 0);
            tilemap.SetTile(position + offsets[i], tile);
        }
        
        tilemap.GetTileEntityIdsFromOffsets(position, offsets, entityIds);        for (var i = 0; i < count; i++)
        {
            Debug.Log($"The ids for the Tile placed are equal ({(entityIds[i] == tile.GetEntityId()).ToString()})");    
        }
    }
}
```
