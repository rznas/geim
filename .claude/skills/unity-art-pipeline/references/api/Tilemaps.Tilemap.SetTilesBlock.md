<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.SetTilesBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Bounds to be filled. |
| tileArray | An array of Tiles to be placed. |

### Description

Fills bounds with array of Tiles.

This is meant for a more performant way to set Tiles as a batch, when compared to calling SetTile for every single Tile. The bounds size must match the array size. For example bounds of 1x2x3 needs an array length of 6.

```csharp
// Fill area on Tilemap with checkerboard pattern of tileA and tileB
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    public TileBase tileA;
    public TileBase tileB;
    public BoundsInt area;    void Start()
    {
        TileBase[] tileArray = new TileBase[area.size.x * area.size.y * area.size.z];
        for (int index = 0; index < tileArray.Length; index++)
        {
            tileArray[index] = index % 2 == 0 ? tileA : tileB;
        }
        Tilemap tilemap = GetComponent<Tilemap>();
        tilemap.SetTilesBlock(area, tileArray);
    }
}
```

Refer to Scriptable Tiles and Tilemap for more information.
