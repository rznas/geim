<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.SetTiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positionArray | An array of positions of Tiles on the Tilemap. |
| tileArray | An array of Tiles to be placed. |

### Description

Sets an array of Tiles at the given XYZ coordinates of the corresponding cells in the Tilemap.

Refer to Scriptable Tiles and Tilemap for more information.

```csharp
// Fills Tilemap area with checkerboard pattern of tileA and tileB
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    public TileBase tileA;
    public TileBase tileB;
    public Vector2Int size;    void Start()
    {
        Vector3Int[] positions = new Vector3Int[size.x * size.y];
        TileBase[] tileArray = new TileBase[positions.Length];        for (int index = 0; index < positions.Length; index++)
        {
            positions[index] = new Vector3Int(index % size.x, index / size.y, 0);
            tileArray[index] = index % 2 == 0 ? tileA : tileB;
        }        Tilemap tilemap = GetComponent<Tilemap>();
        tilemap.SetTiles(positions, tileArray);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| tileChangeDataArray | The array of Tiles with additional properties to place. |
| ignoreLockFlags | Whether to ignore Lock Flags set in the Tile's TileFlags when applying Color and Transform changes from TileChangeData. |

### Description

Sets an array of Tiles with additonal properties at the given XYZ coordinates of the corresponding cells in the Tilemap. The Color and Transform of the TileChangeData will take precedence over the values from the Tile.

Refer to Scriptable Tiles and Tilemap for more information.
