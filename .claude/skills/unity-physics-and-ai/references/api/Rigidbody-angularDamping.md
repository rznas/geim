<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-angularDamping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angular damping of the object.

Angular damping can be used to slow down the rotation of an object. The higher the damping the more the rotation slows down.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    // Get a wild spin under control when the user
    // presses the spacebar.
    void Update()
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
            rb.angularDamping = 0.8F;
        else
            rb.angularDamping = 0;
    }
}
```
