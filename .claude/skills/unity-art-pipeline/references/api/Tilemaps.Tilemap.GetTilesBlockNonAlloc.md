<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetTilesBlockNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bounds | The bounds to retrieve from. |
| tiles | The array of Tiles to contain the Tiles at the given bounds. |

### Returns

**int** Returns the number of Tiles retrieved, including null entries.

### Description

Retrieves an array of Tiles with the given bounds.

This is meant for more a performant way to get Tiles as a batch, when compared to calling GetTile for every single position. If the size of the arrays passed in as parameters are less than the number of Tiles within the range, the arrays will not be resized and the results will be limited.

```csharp
// Retrieves all Tiles from an area on the Tilemap and prints out the Tiles to console
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    public BoundsInt area;    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        TileBase[] tileArray = new TileBase[16];
        int count = tilemap.GetTilesBlockNonAlloc(area, tileArray);
        for (int index = 0; index < count; index++)
        {
            print(tileArray[index]);
        }
    }
}
```
