<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-distance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The distance the physics query traversed before it detected a Collider2D.

When the RaycastHit2D result is returned from a physics query, the `distance` refers to the distance from the physics query start position to the position the physics query shape intersected as indicated by RaycastHit2D.centroid. For simple linecast or raycast queries, RaycastHit2D.point is used to calculate the distance.

Additional resources: RaycastHit2D.fraction.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the specified direction.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If we hit something that was less than 6 world units away then write a message.
        if (hit && hit.distance < 6f)
            Debug.Log("Hit something within range!");
    }
}
```
