<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-linearVelocityY.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Y component of the linear velocity of the Rigidbody2D in world-units per second.

The linear velocity is specified as a Vector2 with components in the X and Y directions (there is no Z direction in 2D physics).

This property lets you read or write the Y component of the Rigidbody2D.linearVelocity separately without affecting the X component of the Rigidbody2D.linearVelocity. This can be convenient when dealing with only X or Y directions in isolation.

Additional resources: Rigidbody2D.linearVelocity and Rigidbody2D.linearVelocityX.

```csharp
using UnityEngine;// Ensure that the maximum vertical speed moving up isn't larger than the configurable value.
public class Example : MonoBehaviour
{
    public float MaximumVerticalSpeed = 2f;    private Rigidbody2D rb;    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }    void FixedUpdate()
    {
        // Clamp the vertical speed.
        if (rb.linearVelocityY > MaximumVerticalSpeed)
        {
            rb.linearVelocityY = MaximumVerticalSpeed;
        }
    }
}
```
