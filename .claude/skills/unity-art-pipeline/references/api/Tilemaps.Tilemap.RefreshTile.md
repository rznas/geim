<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.RefreshTile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the Tile on the Tilemap. |

### Description

Refreshes a Tile at the given XYZ coordinates of a cell in the Tilemap.

The Tilemap will retrieve the rendering data, animation data and other data for the Tile and update all relevant components.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;// Tile that displays a Sprite when it is alone and a different Sprite when it is orthogonally adjacent to the same NeighourTile
[CreateAssetMenu]
public class NeighbourTile : TileBase
{
    public Sprite spriteA;
    public Sprite spriteB;    public override void RefreshTile(Vector3Int position, ITilemap tilemap)
    {
        for (int yd = -1; yd <= 1; yd++)
        {
            Vector3Int location = new Vector3Int(position.x, position.y + yd, position.z);
            if (IsNeighbour(location, tilemap))
                tilemap.RefreshTile(location);
        }
        for (int xd = -1; xd <= 1; xd++)
        {
            Vector3Int location = new Vector3Int(position.x + xd, position.y, position.z);
            if (IsNeighbour(location, tilemap))
                tilemap.RefreshTile(location);
        }
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

Refer to Scriptable Tiles and Tilemap for more information.
