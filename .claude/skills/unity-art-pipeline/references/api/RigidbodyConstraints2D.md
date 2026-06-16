<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RigidbodyConstraints2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use these flags to constrain motion of a Rigidbody2D.

Common use cases include:

- Freezing rotation for characters that shouldn't rotate when moving, such as in platformers.
- Freezing the X axis for objects that should only move vertically, such as elevators.
- Freezing the Y axis for objects that should only move horizontally, such as platforms that characters jump on.

**Note:** You can combine multiple constraints using the bitwise OR operator (|) to create custom combinations of frozen axes.

Additional resources: Rigidbody2D.constraints.

```csharp
using UnityEngine;// This script demonstrates how to freeze the rotation of a Rigidbody2D component
public class Example : MonoBehaviour
{
    private Rigidbody2D rb;    private void Awake()
    {
        // Fetch the Rigidbody2D component
        rb = GetComponent<Rigidbody2D>();
        // Freeze the rotation of the Rigidbody2D component
        rb.constraints = RigidbodyConstraints2D.FreezeRotation;
    }    private void Update()
    {
        // If the space key is pressed, add an impulse force to the Rigidbody2D component
        if (Input.GetKeyDown(KeyCode.Space))
        {
            rb.AddForce(Vector2.up * 10, ForceMode2D.Impulse);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | No constraints. |
| FreezePositionX | Freeze motion along the X-axis. |
| FreezePositionY | Freeze motion along the Y-axis. |
| FreezeRotation | Freeze rotation along the Z-axis. |
| FreezePosition | Freeze motion along the X-axis and Y-axis. |
| FreezeAll | Freeze rotation and motion along all axes. |
