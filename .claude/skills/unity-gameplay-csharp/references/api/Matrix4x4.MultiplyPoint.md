<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.MultiplyPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms a position by this matrix (generic).

Returns a position `v` transformed by the current fully arbitrary matrix. If the matrix is a regular 3D transformation matrix, it is much faster to use MultiplyPoint3x4 instead. `MultiplyPoint` is slower, but can handle projective transformations as well.

Additional resources: MultiplyPoint3x4, MultiplyVector.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
  void Start()
  {
    // Find our current location in the camera's projection space.
    Vector3 pt = Camera.main.projectionMatrix.MultiplyPoint(transform.position);
  }
}
```
