<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileBase-cachedEntityId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The cached EntityId of the TileBase.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public static void TileCachedEntityIdExample(TileBase tile)
    {
        Debug.Log($"The cached EntityId for the Tile is equal to GetEntityId: ({(tile.cachedEntityId == tile.GetEntityId()).ToString()})");
    }
}
```
