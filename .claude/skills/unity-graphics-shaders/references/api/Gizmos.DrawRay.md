<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The ray start position in world space. |
| direction | The vector in world space defining the direction and length of the ray. The magnitude of this vector determines the length of the drawn ray. |
| r | A Ray struct that contains the origin and direction of the ray to draw. |

### Description

Draws a ray starting at a specified position `from` and extending in a given `direction` in the Scene view.

`DrawRay` is a method used for visual debugging in the Unity Editor. `DrawRay` renders a line segment in the Scene view. `DrawRay` is useful for visualizing raycasts, directions, or vectors in your scene.

The line is drawn using the current Gizmos color, which can be set using Gizmos.color before calling `DrawRay`. The line is drawn using the current Gizmos matrix, which can be set using Gizmos.matrix before calling `DrawRay`.

Typically, you'd use this method within MonoBehaviour.OnDrawGizmos or MonoBehaviour.OnDrawGizmosSelected functions in your MonoBehaviour scripts, or within a method with the DrawGizmo attribute. Like all Gizmos, it's an Editor-only tool and should not be used for game functionality. This method has no effect in the GameView or at runtime. If you want to draw similar shapes at runtime refer to Debug.DrawLine.

The line segment respects the 3D space and perspective of the scene, including depth and occlusion by other objects. It also respects the alpha channel of the Gizmos color, allowing for semi-transparent lines as well as the transformation of Gizmos.matrix.

```csharp
using UnityEngine;public class RayGizmoExample : MonoBehaviour
{
    public Vector3 direction = Vector3.forward;
    public float length = 5f;
    [Range(0f, 1f)]
    public float alpha = 0.75f;    private void OnDrawGizmos()
    {
        // Set the color with custom alpha.
        Gizmos.color = new Color(0f, 1f, 0f, alpha); // Green with custom alpha        // Draw the ray.
        Gizmos.DrawRay(transform.position, direction.normalized * length);        // Draw a sphere at the end of the ray.
        Gizmos.DrawSphere(transform.position + direction.normalized * length, 0.1f);
    }
}
```

Additional resources: MonoBehaviour.OnDrawGizmos, MonoBehaviour.OnDrawGizmosSelected, DrawGizmo, Gizmos.color, Gizmos.matrix.
