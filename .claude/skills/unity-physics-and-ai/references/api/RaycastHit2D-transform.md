<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-transform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Transform on the GameObject that the Collider2D is attached to.

When the RaycastHit2D result is returned from a physics query, the `collider` refers to the specific Collider2D that was detected however `transform` refers to the Transform on the GameObject that the RaycastHit2D.collider is attached to.

**NOTE**: `transform` is equivalent to using Collider2D.transform and is provided for convenience only. This field will be NULL if nothing was detected. 

Additional resources: RaycastHit2D.collider.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the specified direction.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If something was hit then move the transform to the world origin.
        if (hit)
            hit.transform.position = Vector3.zero;
    }
}
```
