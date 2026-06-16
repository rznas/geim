<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ViewportToWorldPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The 3d vector in Viewport space. |

### Returns

**Vector3** The 3d vector in World space.

### Description

Transforms `position` from viewport space into world space.

Viewport space is normalized and relative to the camera. The bottom-left of the viewport is (0,0); the top-right is (1,1). The z position is in world units from the camera.

Note that ViewportToWorldPoint transforms an x-y screen position into a x-y-z position in 3D space.

Provide the function with a vector where the x-y components of the vector are the screen coordinates and the z component is the distance of the resulting plane from the camera.

```csharp
// Draw a yellow sphere at top-right corner of the near plane
// for the selected camera in the Scene view.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnDrawGizmosSelected()
    {
        Camera camera = GetComponent<Camera>();
        Vector3 p = camera.ViewportToWorldPoint(new Vector3(1, 1, camera.nearClipPlane));
        Gizmos.color = Color.yellow;
        Gizmos.DrawSphere(p, 0.1F);
    }
}
```
