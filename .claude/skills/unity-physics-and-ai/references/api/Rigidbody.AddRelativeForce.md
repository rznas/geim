<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.AddRelativeForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | Force vector in local coordinates. |

### Description

Adds a force to the rigidbody relative to its coordinate system.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddRelativeForce has no effect.

Wakes up the Rigidbody by default. If the force size is zero then the Rigidbody will not be woken up.

For more information on how ForceMode affects velocity, see Rigidbody.AddForce.

Additional resources: AddForce, AddForceAtPosition, AddRelativeTorque.

```csharp
using UnityEngine;
using System.Collections;// Add a thrust force to push an object in its current forward
// direction (to simulate a rocket motor, say).
public class ExampleClass : MonoBehaviour
{
    public float thrust;
    public Rigidbody rb;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void FixedUpdate()
    {
        rb.AddRelativeForce(Vector3.forward * thrust);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | Size of force along the local x-axis. |
| y | Size of force along the local y-axis. |
| z | Size of force along the local z-axis. |

### Description

Adds a force to the rigidbody relative to its coordinate system.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddRelativeForce has no effect.

Wakes up the Rigidbody by default. If the force size is zero then the Rigidbody will not be woken up.
