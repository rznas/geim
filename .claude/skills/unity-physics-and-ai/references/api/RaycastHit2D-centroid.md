<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-centroid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The world space centroid (center) of the physics query shape when it intersects.

When the RaycastHit2D result is returned from a linecast or raycast query, the `centroid` is identical to the returned point property because a line or ray uses a very small point with no area, so its position is the same as the position it intersects a Collider2D.

However, when using other physics queries that cast shapes that do have an area such as circles, capsules or boxes, the `centroid` is the center of the respective shape used when it is in contact with the returned point. For example, a circle will always have its `centroid` be its radius away from the returned point.

The `centroid` helps identify the position the shape would be at for it to come into contact at the returned RaycastHit2D.point.

Additional resources: RaycastHit2D.point.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // A stationary planet
    public Transform planet;    // A satellite moving around the planet
    public Transform satellite;    void Update()
    {
        // Cast a circle with a radius of 10 in from the satellite position to the planet position.
        RaycastHit2D hit = Physics2D.CircleCast(satellite.position, 10.0f, planet.position);        // If something was hit, draw a line from the planet to the position the satellite would be if it were to hit the planet.
        if (hit)
            Debug.DrawLine(planet.position, hit.centroid, Color.yellow);
    }
}
```

Additional resources: RaycastHit2D.point.
