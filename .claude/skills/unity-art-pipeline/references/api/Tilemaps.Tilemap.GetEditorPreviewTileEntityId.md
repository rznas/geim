<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetEditorPreviewTileEntityId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position of the editor preview Tile on the Tilemap. |

### Returns

**EntityId** The EntityId of the editor preview Tile placed at the cell.

### Description

Gets the EntityId of the editor preview Tile at the given xyz coordinates of a cell in the Tilemap.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public static void GetEditorPreviewTileEntityIdExample(Tilemap tilemap, Vector3Int position, Tile tile)
    {
        tilemap.SetEditorPreviewTile(position, tile);
        var tileId = tilemap.GetEditorPreviewTileEntityId(position);
        Debug.Log($"The ids for the Tile placed are equal ({(tileId == tile.GetEntityId()).ToString()})");
    }
}
```
