<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.SetColumn.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets a column of the matrix.

You use this to build transformation matrices using right, up and forward vectors:

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // build a matrix from a transform.
    Matrix4x4 matrix = new Matrix4x4();    /// Build a matrix from a transform.
    void Start()
    {
        matrix.SetColumn(0, transform.right);
        matrix.SetColumn(1, transform.up);
        matrix.SetColumn(2, transform.forward);
        var p = transform.position;
        matrix.SetColumn(3, new Vector4(p.x, p.y, p.z, 1));
    }
}
```

The i-th column is set from `v`. `i` must be from 0 to 3 inclusive.

Additional resources: GetColumn.
