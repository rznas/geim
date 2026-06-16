<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-linearVelocityX.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The X component of the linear velocity of the Rigidbody2D in world-units per second.

The linear velocity is specified as a Vector2 with components in the X and Y directions (there is no Z direction in 2D physics).

This property lets you read and write only the X component of the Rigidbody2D.linearVelocity without affecting the Y component of the Rigidbody2D.linearVelocity. This is convenient when dealing with X and Y directions in isolation.

Additional resources: Rigidbody2D.linearVelocity and Rigidbody2D.linearVelocityY.

```csharp
using UnityEngine;// Ensure that the maximum horizontal speed moving right isn't larger than the configurable value.
public class Example : MonoBehaviour
{
    public float MaximumSpeedRight = 2f;    private Rigidbody2D rb;    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }    void FixedUpdate()
    {
        // Clamp the horizontal speed.
        if (rb.linearVelocityX > MaximumSpeedRight)
        {
            rb.linearVelocityX = MaximumSpeedRight;
        }
    }
}
```
