<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-point.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The world space position where the physics query shape intersected with the detected Collider2D surface.

Additional resources: RaycastHit2D.normal and RaycastHit2D.fraction.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the direction specified in the inspector.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If something was hit, draw a line from the start position to the point we intersected.
        if (hit)
            Debug.DrawLine(transform.position, hit.point, Color.yellow);
    }
}
```
