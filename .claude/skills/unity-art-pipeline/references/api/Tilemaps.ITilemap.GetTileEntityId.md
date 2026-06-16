<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.ITilemap.GetTileEntityId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position of the Tile on the Tilemap. |

### Returns

**EntityId** EntityId of the TileBase placed at the cell.

### Description

Gets the EntityId of the Tile at the given xyz coordinates of a cell in the Tilemap.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public static void GetTileEntityIdExample(ITilemap tilemap, Vector3Int position, Tile tile)
    {
        tilemap.GetComponent<Tilemap>().SetTile(position, tile);
        var tileId = tilemap.GetTileEntityId(position);
        Debug.Log($"The ids for the Tile placed are equal ({(tileId == tile.GetEntityId()).ToString()})");
    }
}
```
