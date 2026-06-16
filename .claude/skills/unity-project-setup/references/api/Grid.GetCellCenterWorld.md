<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Grid.GetCellCenterWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Grid cell position. |

### Returns

**Vector3** Center of the cell transformed into world space coordinates.

### Description

Get the logical center coordinate of a grid cell in world space.

In a rectangular grid layout, a call to GridLayout.CellToWorld with Vector3Int parameter, returns a Vector3 coordinate that represents the bottom-left of the cell. This is mathematically correct, but when for example instantiating a GameObject into the grid, you often prefer the center of the cell instead.

```csharp
// Snap the GameObject to parent Grid center of cell
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Grid grid = transform.parent.GetComponent<Grid>();
        Vector3Int cellPosition = grid.WorldToCell(transform.position);
        transform.position = grid.GetCellCenterWorld(cellPosition);
    }
}
```
