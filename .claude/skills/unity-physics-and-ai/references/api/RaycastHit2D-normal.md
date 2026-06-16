<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-normal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The surface normal of the detected Collider2D.

When the physics query detects an intersection of a Collider2D at a specific RaycastHit2D.point the `normal` is the surface normal of the Collider2D at that position. A surface normal is a vector perpendicular to the collider surface edge in a direction pointing away from the collider.

 Additional resources: RaycastHit2D.point.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the direction specified in the inspector.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If something was hit, draw a line from the hit position in the direction of the surface normal.
        if (hit)
            Debug.DrawLine(hit.point, hit.point + hit.normal, Color.yellow);
    }
}
```

**Note:** If a hit starts occuring inside a collider, the collision normal is the opposite direction of the line/ray query.
