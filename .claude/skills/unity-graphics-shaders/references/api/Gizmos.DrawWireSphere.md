<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawWireSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The center point of the sphere to draw. |
| radius | The radius of the sphere to draw. Determines the size of the drawn sphere. |

### Description

Draws a wireframe sphere with `center` and `radius` in the Scene view.

`DrawWireSphere` is a method used for visual debugging in the Unity Editor. It renders a wireframe sphere in the Scene view. This method is useful for visualizing collision areas, effect ranges, or important positions within your scene.

The sphere is drawn using the current Gizmos color, which can be set using Gizmos.color before calling `DrawWireSphere`. The sphere is drawn using the current Gizmos matrix, which can be set using Gizmos.matrix before calling `DrawWireSphere`.

Typically, you'd use this method within MonoBehaviour.OnDrawGizmos or MonoBehaviour.OnDrawGizmosSelected functions in your MonoBehaviour scripts, or within a method with the DrawGizmo attribute. Like all Gizmos, it's an Editor-only tool and should not be used for game functionality. This method has no effect in the GameView or at runtime. If you want to draw similar shapes at runtime, refer to Debug.DrawLine.

The sphere respects the 3D space and perspective of the scene, including depth and occlusion by other objects. It also respects the alpha channel of the Gizmos color, allowing for semi-transparent spheres as well as the transformation of Gizmos.matrix.

```csharp
using UnityEngine;public class SphereGizmoExample : MonoBehaviour
{
    public float radius = 1f;
    [Range(0f, 1f)]
    public float alpha = 0.5f;    private void OnDrawGizmos()
    {
        // Set the color with custom alpha
        Gizmos.color = new Color(1f, 0f, 0f, alpha); // Red with custom alpha        // Draw the sphere
        Gizmos.DrawSphere(transform.position, radius);        // Draw wire sphere outline
        Gizmos.color = Color.white;
        Gizmos.DrawWireSphere(transform.position, radius);
    }
}
```

Additional resources: MonoBehaviour.OnDrawGizmos, MonoBehaviour.OnDrawGizmosSelected, DrawGizmo, Gizmos.color, Gizmos.matrix.
