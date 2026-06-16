<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.CalculateLOD.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The centre of the gizmo in world space. |
| radius | The maximum extent of the gizmo. |

### Returns

**float** Returns a value between 0 and 1 that represents the level of detail for the gizmo.

### Description

Determines the appropriate level of detail for a gizmo in the Scene view at a specified position with a specified radius.

A return value of 0 indicates the gizmo is not visible. The gizmo might not be visible because it is too small on the screen or because it is outside of the Scene view camera frustum. The return value is quantized to eighths to reduce the number of produced batches. This can be further controlled with the 'Fade Gizmos' options in the Gizmos menu.

```csharp
using UnityEngine;public class MyLODedComponent : MonoBehaviour
{
    // Draw a blue sphere at the transform's position, fading out as it gets further away
    private void OnDrawGizmos()
    {
        float lod = Gizmos.CalculateLOD(transform.position, 1);        // Cull any gizmos that are too small or off screen
        if (lod == 0.0f)
            return;        // Fade the gizmos out so that they don't pop in and out when scrolling around the scene
        Gizmos.color = Color.blue * lod;
        Gizmos.DrawSphere(transform.position, 1);
    }
}
```
