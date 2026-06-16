<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HingeJoint-limits.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Limit of angular rotation (in degrees) on the hinge joint.

The joint will be limited so that the angle is always between JointLimits.min and JointLimits.max. The joint angle is in degrees relative to the rest angle. The rest angle between the bodies is always zero at the beginning of the simulation.

Additional resources: useLimits, JointLimits.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Set the hinge limits for a door.
        HingeJoint hinge = GetComponent<HingeJoint>();        JointLimits limits = hinge.limits;
        limits.min = 0;
        limits.bounciness = 0;
        limits.bounceMinVelocity = 0;
        limits.max = 90;
        hinge.limits = limits;
        hinge.useLimits = true;
    }
}
```

Modifying the limits does **not** automatically enable the limits.
