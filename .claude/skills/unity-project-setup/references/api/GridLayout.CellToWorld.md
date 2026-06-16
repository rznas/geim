<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GridLayout.CellToWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cellPosition | Cell position to convert. |

### Returns

**Vector3** World position of the cell position.

### Description

Converts a cell position to world position space.

```csharp
// Snap the GameObject to parent GridLayout
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GridLayout gridLayout = transform.parent.GetComponentInParent<GridLayout>();
        Vector3Int cellPosition = gridLayout.WorldToCell(transform.position);
        transform.position = gridLayout.CellToWorld(cellPosition);
    }
}
```
