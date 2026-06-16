<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileBase.GetTileData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the Tile on the Tilemap. |
| tilemap | The Tilemap the tile is present on. |
| tileData | Data to render the tile. |

### Returns

**void** Whether the call was successful.

### Description

Retrieves any tile rendering data from the scripted tile.

Implement this and fill in the TileData to have the Tilemap to render the tile.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;// Tile that repeats two sprites in checkerboard pattern
[CreateAssetMenu]
public class CheckerboardTile : TileBase
{
    public Sprite spriteA;
    public Sprite spriteB;    public override void GetTileData(Vector3Int position, ITilemap tilemap, ref TileData tileData)
    {
        bool evenCell = Mathf.Abs(position.y + position.x) % 2 > 0;
        tileData.sprite = evenCell ? spriteA : spriteB;
    }
}
```
