<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.AddTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| torque | Torque vector in world coordinates. |
| mode | The type of torque to apply. |

### Description

Adds a torque to the rigidbody.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddTorque has no effect.

The effects of the torques applied with this function are accumulated at the time of the call. The physics system applies the effects during the next simulation run (either after FixedUpdate, or when the script explicitly calls the Physics.Simulate method). Because this function has different modes, the physics system only accumulates the resulting angular velocity change, not the passed torque values. Assuming deltaTime (DT) is equal to the simulation step length (Time.fixedDeltaTime), and mass is equal to the mass of the Rigidbody the torque is being applied to, here is how the angular velocity change is calculated for all the modes:

- ForceMode.Force: Interprets the input as torque (measured in Newton-metres), and changes the angular velocity by the value of torque * DT / inertia. The effect depends on the simulation step length and the mass of the body.
- ForceMode.Acceleration: Interprets the parameter as angular acceleration (measured in radians per second squared), and changes the angular velocity by the value of torque * DT. The effect depends on the simulation step length but does not depend on the mass of the body.
- ForceMode.Impulse: Interprets the parameter as an angular momentum (measured in kilogram-meters-squared per second), and changes the angular velocity by the value of torque / inertia. The effect depends on the mass of the body but doesn't depend on the simulation step length.
- ForceMode.VelocityChange: Interprets the parameter as a direct angular velocity change (measured in radians per second), and changes the angular velocity by the value of torque. The effect doesn't depend on the mass of the body and the simulation step length.

Wakes up the Rigidbody by default. If the torque size is zero then the Rigidbody will not be woken up.

Additional resources: AddRelativeTorque, AddForce.

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
        float turnInput = Keyboard.current.spaceKey.isPressed ? 1f : 0f;        rb.AddTorque(Vector3.up * torque * turnInput * Time.fixedDeltaTime);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | Size of torque along the world x-axis. |
| y | Size of torque along the world y-axis. |
| z | Size of torque along the world z-axis. |
| mode | The type of torque to apply. |

### Description

Adds a torque to the rigidbody.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddTorque has no effect.

Wakes up the Rigidbody by default. If the torque size is zero then the Rigidbody will not be woken up.
