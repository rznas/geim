<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetCellCenterLocal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Grid cell position. |

### Returns

**Vector3** Returns the center of the cell transformed into local space coordinates.

### Description

Gets the logical center coordinate of a Grid cell in local space. The logical center for a cell of the Tilemap is defined by the Tile Anchor of the Tilemap.

In a rectangular grid layout, a call to GridLayout.CellToLocal with Vector3Int parameter, returns a Vector3 coordinate that represents the bottom-left of the cell. While mathematically correct, you may prefer the center of the cell, for example when instantiating a GameObject into the grid.

```csharp
// Snap the GameObject to parent Tilemap center of cell
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Tilemap tilemap = transform.parent.GetComponent<Tilemap>();
        Vector3Int cellPosition = tilemap.LocalToCell(transform.localPosition);
        transform.localPosition = tilemap.GetCellCenterLocal(cellPosition);
    }
}
```
