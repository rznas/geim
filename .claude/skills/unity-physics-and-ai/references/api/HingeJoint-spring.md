<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HingeJoint-spring.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The spring attempts to reach a target angle by adding spring and damping forces.

The JointSpring.spring force attempts to reach the target angle. A larger value makes the spring reach the target position faster.

The JointSpring.damper force dampens the angular velocity. A larger value makes the spring reach the goal slower.

The spring reaches for the JointSpring.targetPosition angle in degrees relative to the rest angle. The rest angle between the bodies is always zero at the beginning of the simulation.

Additional resources: useSpring, JointSpring, useAcceleration.

```csharp
using UnityEngine;
using System.Collections;
public class HingeExample : MonoBehaviour
{
    void Start()
    {
        HingeJoint hinge = GetComponent<HingeJoint>();        // Make the spring reach shoot for a 70 degree angle.
        // This could be used to fire off a catapult.        JointSpring hingeSpring = hinge.spring;
        hingeSpring.spring = 10;
        hingeSpring.damper = 3;
        hingeSpring.targetPosition = 70;
        hinge.spring = hingeSpring;
        hinge.useSpring = true;
    }
}
```

Modifying the spring does **not** automatically enable it.

Enabling the motor **overrides** the spring, given the spring was enabled. If the motor is again disabled the spring will be restored.
