<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody2D that the Collider2D detected by the physics query is attached to.

When the RaycastHit2D result is returned from a physics query, the `collider` refers to the specific Collider2D that was detected however `rigidbody` refers to the Rigidbody2D the Collider2D is attached to.

In the case where the Collider2D is not attached to a Rigidbody2D then `rigidbody` will be NULL.

**NOTE**: `rigidbody` is equivalent to using Collider2D.attachedRigidbody and is provided for convenience only.

Additional resources: RaycastHit2D.collider.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the specified direction.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If something was hit and it was attached to a rigidbody then move the rigidbody to the world origin.
        if (hit && hit.rigidbody)
            hit.rigidbody.position = Vector2.zero;
    }
}
```

Additional resources: Rigidbody2D class.
