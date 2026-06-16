<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.SwapTile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| changeTile | Tile to swap. |
| newTile | Tile to swap to. |

### Description

Swaps all existing Tiles of **changeTile** to **newTile** and refreshes all the swapped Tiles.

```csharp
// Change all occurences of tileA into tileB
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    public TileBase tileA;
    public TileBase tileB;    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        tilemap.SwapTile(tileA, tileB);
    }
}
```

Refer to Scriptable Tiles and Tilemap for more information.
