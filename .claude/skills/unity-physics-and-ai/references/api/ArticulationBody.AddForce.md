<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.AddForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | The force vector to apply. |
| mode | The type of force to apply. |

### Description

Applies a force to the ArticulationBody.

Note that the force accumulates over the duration of a simulation frame. It is only physically applied to the articulation body during the simulation step, after FixedUpdate has been called to scripts. Specifying the ForceMode `mode` allows the type of force to be changed to an Acceleration, Impulse or Velocity Change.

You can only apply a force to an active ArticulationBody. If a GameObject is inactive, AddForce has no effect. Also, the ArticulationBody must be movable (cannot be immovable).

ForceMode.Force and ForceMode.Acceleration modes modify the Linear Velocity Per Second accumulator and ForceMode.Impulse and ForceMode.VelocityChange modify the Linear Velocity Per Step accumulator. Mixing these 2 groups of ForceModes doesn't work for Articulation Bodies and will result in only the Linear Velocity Per Second accumulator being applied.

For more information on how ForceMode affects velocity, see Rigidbody.AddForce.

By default the ArticulationBody's state is set to awake when a force is applied, unless the force is Vector3.zero. 
Unit of measurement - N (newtons).

Additional resources: AddForceAtPosition, AddRelativeForce, AddTorque.

This example applies a forward force to the GameObject's ArticulationBody.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;
                        
public class Example : MonoBehaviour
{
    ArticulationBody m_ArticulationBody;
    public float m_Thrust = 20f;    void Start()
    {
        //Fetch the ArticulationBody from the GameObject with this script attached
        m_ArticulationBody = GetComponent<ArticulationBody>();
    }    void FixedUpdate()
    {
        if (Keyboard.current.spaceKey.isPressed)
        {
            //Apply a force to this ArticulationBody in the direction of this GameObject's up-axis
            m_ArticulationBody.AddForce(transform.up * m_Thrust);
        }
    }
}
```
