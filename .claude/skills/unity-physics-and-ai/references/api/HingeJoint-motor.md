<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HingeJoint-motor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The motor will apply a force up to a maximum force to achieve the target velocity in degrees per second.

The motor tries to reach JointMotor.targetVelocity angular velocity in degrees per second. The motor will only be able to reach `targetVelocity`, if JointMotor.force is sufficiently large. If the joint is spinning faster than `targetVelocity` the motor will brake. A negative `targetVelocity` will make the motor spin in the opposite direction.

The `force` is the maximum torque the motor can exert. If it is zero the motor is disabled.

The motor will brake when it is spinning faster than `targetVelocity` only, if JointMotor.freeSpin is false. If `freeSpin` is true the motor will not brake.

Additional resources: useMotor, JointMotor.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        var hinge = GetComponent<HingeJoint>();        // Make the hinge motor rotate with 90 degrees per second and a strong force.
        var motor = hinge.motor;
        motor.force = 100;
        motor.targetVelocity = 90;
        motor.freeSpin = false;
        hinge.motor = motor;
        hinge.useMotor = true;
    }
}
```

Modifying the motor does **not** automatically enable the motor.

Enabling the motor **overrides** the spring, given the spring was enabled. If the motor is again disabled the spring will be restored.
