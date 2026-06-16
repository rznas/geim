<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4-zero.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a matrix with all elements set to zero (Read Only).

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // will print:
        // 0.00000 0.00000 0.00000 0.00000
        // 0.00000 0.00000 0.00000 0.00000
        // 0.00000 0.00000 0.00000 0.00000
        // 0.00000 0.00000 0.00000 0.00000
        var matrix = Matrix4x4.zero;
        Debug.Log(matrix);
    }
}
```

Additional resources: Matrix4x4.identity property.
