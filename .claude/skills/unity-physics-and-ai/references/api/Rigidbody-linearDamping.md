<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-linearDamping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The linear damping of the Rigidbody linear velocity.

linearDamping can be used to slow down an object. Zero indicates that no damping should be used whereas higher values increase the damping, effectively slowing down the linear motion faster. **Note:** The following formula is how the linear damping is applied: `linearVelocity *= ( 1 - linearDamping * dt )` Additional resources: Rigidbody.angularDamping.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void OpenParachute()
    {
        rb.linearDamping = 20;
    }    void Update()
    {
        if (Keyboard.current.spaceKey.isPressed)
            OpenParachute();
    }
}
```
