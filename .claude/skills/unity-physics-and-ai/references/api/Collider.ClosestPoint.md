<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.ClosestPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Location you want to find the closest point to. |

### Returns

**Vector3** The closest point on the collider, returned in world space coordinates.

### Description

The closest point on the collider given a specified location.

This method computes the point on the Collider that is closest to a 3D location in the world. In the example below `closestPoint` is the point on the Collider and `location` is the point in 3D space. If `location` is in the Collider the `closestPoint` is inside. If the Collider is disabled, the method returns the input `position`.

**Note:** The difference from Collider.ClosestPointOnBounds is that the returned point is actually on the collider instead of on the bounds of the collider. (bounds is a box that surrounds the collider.)

```csharp
using UnityEngine;// Note that closestPoint is based on the surface of the collider
// and location represents a point in 3d space.
// The gizmos work in the editor.
// Note that closestPoint functions correctly regardless of whether the collider is set as a trigger.
//
// Create an origin-based cube and give it a scale of (1, 0.5, 3).
// Change the BoxCollider size to (0.8, 1.2, 0.8).  This means that
// collisions will happen when a GameObject gets close to the BoxCollider.
// The ShowClosestPoint.cs script shows spheres that display the location
// and closestPoint. Try changing the BoxCollider size and the location
// values.// Attach this to a GameObject that has a Collider component attached
public class ShowClosestPoint : MonoBehaviour
{
    public Vector3 location;    public void OnDrawGizmos()
    {
        var collider = GetComponent<Collider>();        if (!collider)
        {
            return; // nothing to do without a collider
        }        Vector3 closestPoint = collider.ClosestPoint(location);        Gizmos.DrawSphere(location, 0.1f);
        Gizmos.DrawWireSphere(closestPoint, 0.1f);
    }
}
```

**Note:** Same as Physics.ClosestPoint but doesn't allow passing a custom position and rotation. Instead, it uses the position of the collider.
