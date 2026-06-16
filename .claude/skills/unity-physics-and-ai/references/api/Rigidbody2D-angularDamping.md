<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-angularDamping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angular damping of the Rigidbody2D angular velocity.

Damping can be used to reduce the Rigidbody2D.angularVelocity (angular speed) of a Rigidbody2D over time.

Zero indicates that no damping should be used whereas higher values increase the damping, effectively slowing down the rotational movement faster. Unlike contact friction, angular damping is always applied.

**Note:** The following formula is how the angular damping is applied `angularVelocity *= 1.0f / ( 1.0f + simulation-time-step * angularDamping )`

Additional resources: Rigidbody2D.linearDamping.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private Rigidbody2D rb;    void Start()
    {
        rb = GetComponent<Rigidbody2D>();        // Start the object spining fast.
        rb.angularVelocity = 45f;        // Turn-off the angular damping.
        rb.angularDamping = 0f;
    } 
    void Update()
    {
        // Set a large angular damping to slow down the spin fast.
        if (Input.GetKeyDown("space"))
            rb.angularDamping = 0.8f;
    }
}
```
