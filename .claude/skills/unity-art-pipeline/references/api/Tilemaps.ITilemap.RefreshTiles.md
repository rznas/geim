<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.ITilemap.RefreshTiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positionArray | An array of positions of Tiles on the Tilemap to refresh. |

### Description

Refreshes Tiles at the given xyz coordinates of cells in the Tilemap from the array.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;// Tile that displays a Sprite when it is alone and a different Sprite when it is orthogonally adjacent to the same NeighourTile
[CreateAssetMenu]
public class NeighbourTile : TileBase
{
    public Sprite spriteA;
    public Sprite spriteB;    public override void RefreshTile(Vector3Int position, ITilemap tilemap)
    {
        var refreshPositions = new NativeArray<Vector3Int>(5, Allocator.Temp);
        var i = 0;
        for (int yd = -1; yd <= 1; yd += 2)
        {
            Vector3Int location = new Vector3Int(position.x, position.y + yd, position.z);
            refreshPositions[i++] = location;
        }
        for (int xd = -1; xd <= 1; xd += 2)
        {
            Vector3Int location = new Vector3Int(position.x + xd, position.y, position.z);
            refreshPositions[i++] = location;
        }
        refreshPositions[i] = position;
        tilemap.RefreshTiles(refreshPositions);
    }    public override void GetTileData(Vector3Int position, ITilemap tilemap, ref TileData tileData)
    {
        tileData.sprite = spriteA;
        for (int yd = -1; yd <= 1; yd += 2)
        {
            Vector3Int location = new Vector3Int(position.x, position.y + yd, position.z);
            if (IsNeighbour(location, tilemap))
                tileData.sprite = spriteB;
        }
        for (int xd = -1; xd <= 1; xd += 2)
        {
            Vector3Int location = new Vector3Int(position.x + xd, position.y, position.z);
            if (IsNeighbour(location, tilemap))
                tileData.sprite = spriteB;
        }
    }    private bool IsNeighbour(Vector3Int position, ITilemap tilemap)
    {
        TileBase tile = tilemap.GetTile(position);
        return (tile != null && tile == this);
    }
}
```
