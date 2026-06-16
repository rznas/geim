<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.AddRelativeForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | The force vector in local coordinates. |
| mode | The type of force to apply. |

### Description

Applies a `force` to the Articulation Body, relative to its local coordinate system.

You can only apply a force to an active ArticulationBody. If a GameObject is inactive, AddRelativeForce has no effect.

ForceMode.Force and ForceMode.Acceleration modes modify the Linear Velocity Per Second accumulator and ForceMode.Impulse and ForceMode.VelocityChange modify the Linear Velocity Per Step accumulator. Mixing these 2 groups of ForceModes doesn't work for Articulation Bodies and will result in only the Linear Velocity Per Second accumulator being applied.

For more information on how ForceMode affects velocity, see Rigidbody.AddForce.

Applying a force to an ArticulationBody wakes up that body. If the force size is zero then the ArticulationBody does not wake up. 
Unit of measurement - N (newtons).

 Additional resources: AddForce, AddForceAtPosition, AddRelativeTorque.

```csharp
using UnityEngine;
using System.Collections;// Add a thrust force to push an object in its current forward
// direction (to simulate a rocket motor, say).
public class ExampleClass : MonoBehaviour
{
    public float thrust;
    public ArticulationBody ab;
    void Start()
    {
        ab = GetComponent<ArticulationBody>();
    }    void FixedUpdate()
    {
        ab.AddRelativeForce(Vector3.forward * thrust);
    }
}
```
