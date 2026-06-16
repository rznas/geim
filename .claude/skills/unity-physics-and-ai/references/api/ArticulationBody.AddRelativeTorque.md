<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.AddRelativeTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| torque | The torque vector in local coordinates. |
| mode | The type of torque to apply. |

### Description

Applies a `torque` to the articulation body, relative to its local coordinate system.

You can only apply a torque to an active ArticulationBody. If a GameObject is inactive, AddRelativeTorque has no effect.

ForceMode.Force and ForceMode.Acceleration modes modify the Angular Velocity Per Second accumulator and ForceMode.Impulse and ForceMode.VelocityChange modify the Angular Velocity Per Step accumulator. Mixing these 2 groups of ForceModes doesn't work for Articulation Bodies and will result in only the Angular Velocity Per Second accumulator being applied.

For more information on how ForceMode affects angular velocity, see Rigidbody.AddTorque.

Applying a torque to an ArticulationBody wakes up that body. If the torque size is zero then the ArticulationBody does not wake up. 
Unit of measurement - Nm (newton-meters).

Additional resources: AddTorque, AddRelativeForce.

```csharp
// Rotate an object around its Y (upward) axis in response to
// left/right controls.
using UnityEngine;
using UnityEngine.InputSystem;public class ExampleClass : MonoBehaviour
{
    public float torque = 10f;
    public ArticulationBody ab;    void FixedUpdate()
    {
        float turnInput = Keyboard.current.spaceKey.isPressed ? 1f : 0f;
                        
        // Apply torque in physics loop
        ab.AddRelativeTorque(Vector3.up * torque * turnInput * Time.fixedDeltaTime);
    }
}
```
