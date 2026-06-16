<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-cameraToWorldMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Matrix that transforms from camera space to world space (Read Only).

Use this to calculate where in the world a specific camera space point is.

Note that camera space matches OpenGL convention: camera's forward is the negative Z axis. This is different from Unity's convention, where forward is the positive Z axis.

```csharp
// Draw a yellow sphere in Scene view at distance/
// units along camera's viewing direction.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float distance = -1.0F;
    void OnDrawGizmosSelected()
    {
        Matrix4x4 m = Camera.main.cameraToWorldMatrix;
        Vector3 p = m.MultiplyPoint(new Vector3(0, 0, distance));
        Gizmos.color = Color.yellow;
        Gizmos.DrawSphere(p, 0.2F);
    }
}
```
