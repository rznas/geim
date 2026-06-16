<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.Scale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a scaling matrix.

Returned matrix is such that scales along coordinate axes by a vector `v`. The matrix looks like this:

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Vector3 scale = new Vector3(1, 2, 1);
        Matrix4x4 scaleMatrix = Matrix4x4.Scale(scale);        Debug.Log(scaleMatrix);
    }
}
```

Additional resources: TRS, Rotate, Translate, SetTRS functions.
