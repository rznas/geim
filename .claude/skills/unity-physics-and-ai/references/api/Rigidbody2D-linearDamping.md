<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-linearDamping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The linear damping of the Rigidbody2D linear velocity.

Damping can be used to reduce the magnitude of the Rigidbody2D.linearVelocity (linear speed) of a Rigidbody2D over time.

Zero indicates that no damping should be used whereas higher values increase the damping, effectively slowing down the linear motion faster. Unlike contact friction, linear damping is always applied.

**Note:** The following formula is how the linear damping is applied: `linearVelocity *= 1.0f / ( 1.0f + simulation-time-step * linearDamping )`

Additional resources: Rigidbody2D.angularDamping.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private Rigidbody2D rb;    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }    void Update()
    {
        if (Input.GetButton("Fire1"))
            OpenParachute();        if (Input.GetButton("space"))
            CloseParachute();
    }    void OpenParachute()
    {
        // Set a large damping to simulate an open parachute.
        rb.linearDamping = 20f;
    }    void CloseParachute()
    {
        // Turn-off damping to simulate a closed parachute.
        rb.linearDamping = 0f;
    }
}
```
