<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.AddTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| torque | Torque to apply. |
| mode | The force mode to use. |

### Description

Apply a torque at the rigidbody's centre of mass.

Applying torque to the Rigidbody2D changes the angularVelocity only. This change is scaled (divided) by the rotational inertia. Therefore, a larger inertia results in smaller changes to angularVelocity, and a smaller inertia results in larger changes to angularVelocity.

When applying torque either as a force or an impulse, you can use any value to get the required change in angularVelocity. However, if you require a specific change in degrees, then you must first convert the `torque` value into radians by multiplying with Mathf.Deg2Rad then multiplying by the inertia.

The following example demonstrates this as an impulse:

Additional resources: AddForce, AddForceAtPosition.

```csharp
using UnityEngine;public class TorqueRotationExample : MonoBehaviour
{
    // Add an impulse which produces a change in angular velocity (specified in degrees).
    public void AddTorqueImpulse(float angularChangeInDegrees)
    {
        var body = GetComponent<Rigidbody2D>();
        var impulse = (angularChangeInDegrees * Mathf.Deg2Rad) * body.inertia;        body.AddTorque(impulse, ForceMode2D.Impulse);
    }
}
```
