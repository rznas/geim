<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JointMotor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The JointMotor is used to motorize a joint.

For example the HingeJoint can be told to rotate at a given speed and force. The joint will then attempt to reach the velocity with the given maximum force.
 Additional resources: HingeJoint.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        HingeJoint hinge = GetComponent<HingeJoint>();        // Make the hinge motor rotate with 90 degrees per second and a strong force.
        JointMotor motor = hinge.motor;
        motor.force = 100;
        motor.targetVelocity = 90;
        motor.freeSpin = false;
        hinge.motor = motor;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| force | The motor will apply a force. |
| freeSpin | If freeSpin is enabled the motor will only accelerate but never slow down. |
| targetVelocity | The motor will apply a force up to force to achieve targetVelocity. |
