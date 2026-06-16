<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GridLayout.LocalToCellInterpolated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| localPosition | Local Position to convert. |

### Returns

**Vector3** Interpolated cell position of the local position.

### Description

Converts a local position to cell position.

Returns the interpolated cell position in floats, rather than the exact cell position.

```csharp
// Move GameObject left by 1/4th of cell width of parent GridLayout
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GridLayout gridLayout = transform.parent.GetComponent<GridLayout>();
        Vector3 cellPosition = gridLayout.LocalToCellInterpolated(transform.localPosition);
        cellPosition += Vector3.left * 0.25f;
        transform.localPosition = gridLayout.CellToLocalInterpolated(cellPosition);
    }
}
```
