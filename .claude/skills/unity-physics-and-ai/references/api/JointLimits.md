<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JointLimits.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

JointLimits is used by the HingeJoint to limit the joints angle.

Additional resources: HingeJoint.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Set the hinge limits for a door.
        HingeJoint hinge = GetComponent<HingeJoint>();        JointLimits limits = hinge.limits;
        limits.min = 0;
        limits.max = 90;
        limits.bounciness = 0;
        limits.bounceMinVelocity = 0;
        hinge.limits = limits;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| bounceMinVelocity | The minimum impact velocity which will cause the joint to bounce. |
| bounciness | Determines the size of the bounce when the joint hits it's limit. Also known as restitution. |
| contactDistance | Distance inside the limit value at which the limit will be considered to be active by the solver. |
| max | The upper angular limit (in degrees) of the joint. |
| min | The lower angular limit (in degrees) of the joint. |
