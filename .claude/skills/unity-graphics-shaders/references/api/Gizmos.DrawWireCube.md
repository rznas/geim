<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawWireCube.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The center point of the cube to draw. |
| size | The size of the cube to draw. This determines the dimensions of the cube along each axis. |

### Description

Draws a wireframe box at `center` with `size` in the Scene view for visualization and debugging purposes.

`DrawWireCube` is a method used for visual debugging in the Unity Editor. It renders a wireframe cube in the Scene view. This method is useful for visualizing bounding boxes, trigger areas, or spatial relationships between objects.

The cube is drawn using the current Gizmos color, which can be set using Gizmos.color before calling `DrawWireCube`. The cube is drawn using the current Gizmos matrix, which can be set using Gizmos.matrix before calling `DrawWireCube`.

Typically, you'd use this method within MonoBehaviour.OnDrawGizmos or MonoBehaviour.OnDrawGizmosSelected functions in your MonoBehaviour scripts, or within a method with the DrawGizmo attribute. Like all Gizmos, it's an Editor-only tool and should not be used for game functionality. This method has no effect in the GameView or at runtime. If you want to draw similar shapes at runtime, refer to Debug.DrawLine.

The cube respects the 3D space and perspective of the scene, including depth and occlusion by other objects. It also respects the alpha channel of the Gizmos color, allowing for semi-transparent cubes as well as the transformation of Gizmos.matrix.

```csharp
using UnityEngine;public class CubeGizmoExample : MonoBehaviour
{
    public Vector3 size = Vector3.one;
    [Range(0f, 1f)]
    public float alpha = 0.5f;    private void OnDrawGizmos()
    {
        // Set the color with custom alpha.
        Gizmos.color = new Color(0f, 1f, 0f, alpha); // Green with custom alpha        // Draw the cube.
        Gizmos.DrawCube(transform.position, size);        // Draw wire cube outline.
        Gizmos.color = Color.white;
        Gizmos.DrawWireCube(transform.position, size);
    }
}
```

Additional resources: MonoBehaviour.OnDrawGizmos, MonoBehaviour.OnDrawGizmosSelected, DrawGizmo, Gizmos.color, Gizmos.matrix.
