<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-rotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation of the rigidbody.

This is the rotation around the z-axis only.

```csharp
using UnityEngine;// Rotate rigidBody2D every frame.  Start at 45 degrees.public class ExampleScript : MonoBehaviour
{
    public Rigidbody2D rigidBody2D;    void Start()
    {
        rigidBody2D = GetComponent<Rigidbody2D>();
        rigidBody2D.rotation = 45f;
    }    void FixedUpdate()
    {
        rigidBody2D.rotation += 1.0f;
    }
}
```
