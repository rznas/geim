<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision2D-collider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The incoming Collider2D involved in the collision with the otherCollider.

This collider is attached to the Collision2D.rigidbody.

Additional resources: Collider2D and Rigidbody2D.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnCollisionEnter2D(Collision2D coll)
    {
        // If the Collider2D component is enabled on the collided object
        if (coll.collider == true)
        {
            // Disables the Collider2D component
            coll.collider.enabled = false;
        }
    }
}
```
