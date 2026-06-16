<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4-determinant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The determinant of the matrix. (Read Only)

You can not invert matrices with a determinant of zero.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Update()
    {
        // create a transformation matrix with scale, zero position and no rotation
        var scale = new Vector3(5,3,2);
        var matrix = Matrix4x4.TRS(Vector3.zero, Quaternion.identity, scale);        // determinant of a scaled matrix is volume of the parallelepiped
        // formed from its axes, in this case 5*3*2=30
        Debug.Log(matrix.determinant);
    }
}
```

See [Determinant on Wikipedia](https://en.wikipedia.org/wiki/Determinant) for more details.

Additional resources: inverse property, Inverse3DAffine method.
