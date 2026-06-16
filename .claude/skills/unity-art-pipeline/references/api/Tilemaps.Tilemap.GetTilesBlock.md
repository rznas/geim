<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetTilesBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The bounds to retrieve from. |

### Returns

**TileBase[]** The array of Tiles at the given bounds.

### Description

Retrieves an array of Tiles with the given bounds.

This is meant for more a performant way to get Tiles as a batch, when compared to calling GetTile for every single position. The bounds size must match the array size. For example bounds of 1x2x3 needs an array length of 6.

```csharp
// Retrieves all Tiles from an area on the Tilemap and prints out the Tiles to console
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    public BoundsInt area;    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        TileBase[] tileArray = tilemap.GetTilesBlock(area);
        for (int index = 0; index < tileArray.Length; index++)
        {
            print(tileArray[index]);
        }
    }
}
```
