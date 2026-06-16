<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4-transpose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the transpose of this matrix (Read Only).

The transposed matrix is the one that has the Matrix4x4's columns exchanged with its rows.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // You construct a Matrix4x4 by passing in four Vector4 objects
    // as being COLUMNS and not ROWS
    Matrix4x4 matrix = new Matrix4x4(
        new Vector4(1, 2, 3, 4),
        new Vector4(5, 6, 7, 8),
        new Vector4(9, 10, 11, 12),
        new Vector4(13, 14, 15, 16));
    void Start()
    {
        Debug.Log(matrix);
        // This outputs
        // 1, 5, 9, 13,
        // 2, 6, 10, 14,
        // 3, 7, 11, 15,
        // 4, 8, 12, 16
        Debug.Log(matrix.transpose);
        // This outputs
        // 1, 2, 3, 4,
        // 5, 6, 7, 8,
        // 9, 10, 11, 12,
        // 13, 14, 15, 16
    }
}
```
