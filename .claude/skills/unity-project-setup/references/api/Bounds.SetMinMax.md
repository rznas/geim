<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds.SetMinMax.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the bounds to the `min` and `max` value of the box.

Using this function is faster than assigning `min` and `max` separately.

```csharp
using UnityEngine;[ExecuteAlways]
public class BoundsSetMinMaxExample : MonoBehaviour
{
    // These represent the corners of the box in world space.
    // 'min' is the corner with the smallest X, Y, and Z values — typically bottom-left-back.
    // 'max' is the corner with the largest X, Y, and Z values — typically top-right-front.
    public Vector3 min = new Vector3(-1, -1, -1); // Bottom-left-back
    public Vector3 max = new Vector3(1, 1, 1);    // Top-right-front
    public Color gizmoColor = Color.cyan;    private Bounds bounds;    void Update()
    {
        // Sets the bounds using the min (smallest XYZ) and max (largest XYZ) corners
        bounds.SetMinMax(min, max);
    }    void OnDrawGizmos()
    {
        // Draw the bounding box as a wireframe cube in the Scene view
        Gizmos.color = gizmoColor;
        Gizmos.DrawWireCube(bounds.center, bounds.size);        // Optional: draw small spheres at min and max points for visual clarity
        Gizmos.color = Color.red;
        Gizmos.DrawSphere(min, 0.1f); // Bottom-left-back (min)
        Gizmos.color = Color.green;
        Gizmos.DrawSphere(max, 0.1f); // Top-right-front (max)
    }
}
```
