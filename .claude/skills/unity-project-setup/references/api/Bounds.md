<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an axis aligned bounding box.

An axis-aligned bounding box, or AABB for short, is a box aligned with coordinate axes and fully enclosing some object. Because the box is never rotated with respect to the axes, it can be defined by just its center and extents, or alternatively by min and max points.

`Bounds` is used by Collider.bounds, Mesh.bounds and Renderer.bounds.

```csharp
using UnityEngine;public class BoundsVisualizer : MonoBehaviour
{
    public Bounds bounds;    void Start()
    {
        // Example bounds setup if not assigned
        if (bounds.size == Vector3.zero)
            bounds = new Bounds(transform.position, Vector3.one);
    }    void Update()
    {
        DrawBounds(bounds, Color.red);
    }    void DrawBounds(Bounds b, Color color)
    {
        Vector3 min = b.min;
        Vector3 max = b.max;        Vector3[] corners = new Vector3[8];
        // Bottom
        corners[0] = new Vector3(min.x, min.y, min.z);
        corners[1] = new Vector3(max.x, min.y, min.z);
        corners[2] = new Vector3(max.x, min.y, max.z);
        corners[3] = new Vector3(min.x, min.y, max.z);
        // Top
        corners[4] = new Vector3(min.x, max.y, min.z);
        corners[5] = new Vector3(max.x, max.y, min.z);
        corners[6] = new Vector3(max.x, max.y, max.z);
        corners[7] = new Vector3(min.x, max.y, max.z);        // Bottom rectangle
        Debug.DrawLine(corners[0], corners[1], color);
        Debug.DrawLine(corners[1], corners[2], color);
        Debug.DrawLine(corners[2], corners[3], color);
        Debug.DrawLine(corners[3], corners[0], color);        // Top rectangle
        Debug.DrawLine(corners[4], corners[5], color);
        Debug.DrawLine(corners[5], corners[6], color);
        Debug.DrawLine(corners[6], corners[7], color);
        Debug.DrawLine(corners[7], corners[4], color);        // Vertical edges
        Debug.DrawLine(corners[0], corners[4], color);
        Debug.DrawLine(corners[1], corners[5], color);
        Debug.DrawLine(corners[2], corners[6], color);
        Debug.DrawLine(corners[3], corners[7], color);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| center | The center of the bounding box. |
| extents | The extents of the Bounding Box. This is always half of the size of the Bounds. |
| max | The maximal point of the box. This is always equal to center+extents. |
| min | The minimal point of the box. This is always equal to center-extents. |
| size | The total size of the box. This is always twice as large as the extents. |

### Constructors

| Constructor | Description |
| --- | --- |
| Bounds | Creates a new Bounds. |

### Public Methods

| Method | Description |
| --- | --- |
| ClosestPoint | The closest point on the bounding box. |
| Contains | Is point contained in the bounding box? |
| Encapsulate | Grows the Bounds to include the point. |
| Expand | Expand the bounds by: size + (amount * 2) along each side. |
| IntersectRay | Does ray intersect this bounding box? |
| Intersects | Does another bounding box intersect with this bounding box? |
| SetMinMax | Sets the bounds to the min and max value of the box. |
| SqrDistance | The smallest squared distance between the point and this bounding box. |
| ToString | Returns a formatted string for the bounds. |
