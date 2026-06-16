<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JointSpring.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

JointSpring is used add a spring force to HingeJoint and PhysicsMaterial.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        HingeJoint hinge = GetComponent<HingeJoint>();        // Make the spring reach shoot for a 70 degree angle.
        // This could be used to fire off a catapult.        JointSpring spring = hinge.spring;
        spring.spring = 10;
        spring.damper = 3;
        spring.targetPosition = 70;
        hinge.spring = spring;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| damper | The damper force uses to dampen the spring. |
| spring | The spring forces used to reach the target position. |
| targetPosition | The target position the joint attempts to reach. |
