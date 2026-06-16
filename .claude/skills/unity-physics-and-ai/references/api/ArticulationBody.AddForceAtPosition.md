<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.AddForceAtPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | The force vector in world coordinates. |
| position | A position in world coordinates. |
| mode | The type of force to apply. |

### Description

Applies a `force` at a specific `position`, resulting in applying a torque and force on the object.

For realistic effects, `position` should be approximately in the range of the surface of the Articulation Body. This is ideal for simulating explosions. To create realistic explosions, apply forces over several frames instead of just one. Note that when `position` is far away from the center of the Articulation Body, the applied torque will be unrealistically large.

You can only apply a force to an active ArticulationBody. If a GameObject is inactive, AddForceAtPosition has no effect.

ForceMode.Force mode modifies the Linear Velocity Per Second and Angular Velicity Per Second accumulators and ForceMode.Impulse mode modifies the Linear Velocity Per Step and Angular Velocity Per Step accumulators. Mixing these 2 ForceModes doesn't work for Articulation Bodies and will result in only the Linear Velocity Per Second accumulator being applied.

For more information on how ForceMode affects velocity, see Rigidbody.AddForce.

Applying a force to an ArticulationBody wakes up that body. If the force size is zero then the ArticulationBody does not wake up. 
Unit of measurement - N (newtons).

**This method does not support**ForceMode.Acceleration**and**ForceMode.VelocityChange**.**

Additional resources: AddForce, AddRelativeForce, AddTorque.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void ApplyForce(ArticulationBody body)
    {
        Vector3 direction = body.transform.position - transform.position;
        body.AddForceAtPosition(direction.normalized, transform.position);
    }
}
```
