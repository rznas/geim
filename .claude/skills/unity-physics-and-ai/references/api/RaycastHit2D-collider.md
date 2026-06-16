<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D-collider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Collider2D detected by the physics query.

When the RaycastHit2D result is returned from a physics query, the `collider` refers to the specific Collider2D that was detected.

**NOTE**: This field will be NULL if nothing was detected however when checking if the result is valid, you should use the less verbose method shown in the code example below.

Additional resources: RaycastHit2D.rigidbody.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Vector2 direction;    void Update()
    {
        // Cast a ray in the specified direction.
        RaycastHit2D hit = Physics2D.Raycast(transform.position, direction);        // If something was hit, delete the specific Collider we hit.
        if (hit)
            Destroy(hit.collider);
    }
}
```
