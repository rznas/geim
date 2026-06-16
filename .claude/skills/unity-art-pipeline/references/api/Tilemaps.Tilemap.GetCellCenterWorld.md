<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetCellCenterWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Grid cell position. |

### Returns

**Vector3** Returns the center of the cell transformed into world space coordinates.

### Description

Gets the logical center coordinate of a Grid cell in world space. The logical center for a cell of the Tilemap is defined by the Tile Anchor of the Tilemap.

In a rectangular grid layout, a call to GridLayout.CellToWorld with Vector3Int parameter returns a Vector3 coordinate that represents the lower left of the cell. This is mathematically correct, but in certain cases such as when instantiating a GameObject into the grid, you may prefer the center of the cell instead.

```csharp
// Snap the GameObject to parent Tilemap center of cell
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Tilemap tilemap = transform.parent.GetComponent<Tilemap>();
        Vector3Int cellPosition = tilemap.WorldToCell(transform.position);
        transform.position = tilemap.GetCellCenterWorld(cellPosition);
    }
}
```
