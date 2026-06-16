<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.AddRelativeTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| torque | Torque vector in local coordinates. |

### Description

Adds a torque to the rigidbody relative to its coordinate system.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddRelativeTorque has no effect.

Wakes up the Rigidbody by default. If the torque size is zero then the Rigidbody will not be woken up.

For more information on how ForceMode affects angular velocity, see Rigidbody.AddTorque.

Additional resources: AddTorque, AddRelativeForce.

```csharp
// Rotate an object around its Y (upward) axis in response to
// left/right controls.using UnityEngine;
using UnityEngine.InputSystem;public class ExampleClass : MonoBehaviour
{
    private float torque = 4;
    private Rigidbody rb;
                        
    void Awake()
    {
        rb = GetComponent<Rigidbody>();
    }
    
    void FixedUpdate()
    {
        float turnInput = Keyboard.current.spaceKey.isPressed ? 1f : 0f;        rb.AddRelativeTorque(Vector3.up * torque * turnInput);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | Size of torque along the local x-axis. |
| y | Size of torque along the local y-axis. |
| z | Size of torque along the local z-axis. |

### Description

Adds a torque to the rigidbody relative to its coordinate system.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddRelativeTorque has no effect.

Wakes up the Rigidbody by default. If the torque size is zero then the Rigidbody will not be woken up.
