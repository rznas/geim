<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds.Expand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Expand the bounds by: `size` + (`amount` * 2) along each side.

Expands the bounds symmetrically by extending each side by the given amount, resulting in a total size increase of (amount × 2) per axis.

```csharp
using UnityEngine;public class BoundsExpandExample : MonoBehaviour
{
    public Vector3 boundsSize = new Vector3(1, 1, 1);
    public float expandAmount = 1f;    private Bounds bounds;    void Start()
    {
        // Initialize bounds at the object's position
        bounds = new Bounds(transform.position, boundsSize);        // Expand the bounds by a scalar (applied uniformly in all directions)
        bounds.Expand(expandAmount);
    }    void Update()
    {
        DrawBounds(bounds, Color.yellow);
    }    void DrawBounds(Bounds b, Color color)
    {
        Vector3 min = b.min;
        Vector3 max = b.max;        Vector3[] corners = new Vector3[8];
        corners[0] = new Vector3(min.x, min.y, min.z);
        corners[1] = new Vector3(max.x, min.y, min.z);
        corners[2] = new Vector3(max.x, min.y, max.z);
        corners[3] = new Vector3(min.x, min.y, max.z);
        corners[4] = new Vector3(min.x, max.y, min.z);
        corners[5] = new Vector3(max.x, max.y, min.z);
        corners[6] = new Vector3(max.x, max.y, max.z);
        corners[7] = new Vector3(min.x, max.y, max.z);        Debug.DrawLine(corners[0], corners[1], color);
        Debug.DrawLine(corners[1], corners[2], color);
        Debug.DrawLine(corners[2], corners[3], color);
        Debug.DrawLine(corners[3], corners[0], color);        Debug.DrawLine(corners[4], corners[5], color);
        Debug.DrawLine(corners[5], corners[6], color);
        Debug.DrawLine(corners[6], corners[7], color);
        Debug.DrawLine(corners[7], corners[4], color);        Debug.DrawLine(corners[0], corners[4], color);
        Debug.DrawLine(corners[1], corners[5], color);
        Debug.DrawLine(corners[2], corners[6], color);
        Debug.DrawLine(corners[3], corners[7], color);
    }
}
```

### Description

Expand the bounds by: `size` + (`amount` * 2) along each side.

Expands the bounds symmetrically by extending each side by the given amount, resulting in a total size increase of (amount × 2) per axis.
