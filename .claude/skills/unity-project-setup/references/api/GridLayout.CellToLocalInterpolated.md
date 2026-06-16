<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GridLayout.CellToLocalInterpolated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cellPosition | Interpolated cell position to convert. |

### Returns

**Vector3** Local position of the cell position.

### Description

Converts an interpolated cell position in floats to local position space.

Returns the local position in floats.

```csharp
// Snap the GameObject to parent GridLayout center of cell
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GridLayout gridLayout = transform.parent.GetComponent<GridLayout>();
        Vector3Int cellPosition = gridLayout.LocalToCell(transform.localPosition);
        transform.localPosition = gridLayout.CellToLocalInterpolated(cellPosition + new Vector3(.5f, .5f, .5f));
    }
}
```
