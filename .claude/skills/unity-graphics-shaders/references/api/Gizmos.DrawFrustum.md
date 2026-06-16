<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawFrustum.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The apex of the truncated pyramid. With respect to a camera, this would be the camera position. This is an offset from the currently set `Gizmos.matrix`. |
| fov | The vertical field of view (the angle at the apex in degrees not radians). |
| maxRange | Distance of the frustum's far plane. |
| minRange | Distance of the frustum's near plane. |
| aspect | The aspect ratio of the frustum to draw. This is the frustum's width divided by its height. |

### Description

Draws a camera frustum using the currently set `Gizmos.matrix` for its location and rotation.

The frustum is drawn with the currently set Gizmos.color. Note that the fov parameter is the vertical field of view, not the horizontal field of view.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnDrawGizmosSelected()
    {
        // Draws a red wireframe frustum at world origin with 16:9 aspect ratio and 90 degrees horizontal FOV.
        Gizmos.color = Color.red;
        Gizmos.DrawFrustum(new Vector3(), 59f, 1000f, 3f, 16f/9f);
        // The near plane value is intentially set large to demonstrate its offset from the frustum center.
    }
}
```
