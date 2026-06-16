<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4-identity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the identity matrix (Read Only).

This is a matrix that effectively does nothing when applied. It has 1s in the main diagonal and 0s in all other elements:

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // will print:
        // 1.00000 0.00000 0.00000 0.00000
        // 0.00000 1.00000 0.00000 0.00000
        // 0.00000 0.00000 1.00000 0.00000
        // 0.00000 0.00000 0.00000 1.00000
        var matrix = Matrix4x4.identity;
        Debug.Log(matrix);
    }
}
```

Additional resources: Matrix4x4.zero, isIdentity.
