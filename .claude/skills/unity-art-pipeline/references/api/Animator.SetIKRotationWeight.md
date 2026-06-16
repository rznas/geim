<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetIKRotationWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| goal | The AvatarIKGoal that is set. |
| value | The rotational weight. |

### Description

Sets the rotational weight of an IK goal (0 = rotation before IK, 1 = rotation at the IK goal).

An IK goal is a target position and rotation for a specific body part. Unity can calculate how to move the part toward the target from the starting point (ie, the current position and rotation obtained from the animation).

This function sets a weight value in the range 0..1 to determine how far between the start and goal rotations the IK will aim. The goal itself is set separately using SetIKRotation.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Transform objToAimAt;
    Animator animator;    void Start()
    {
        animator = GetComponent<Animator>();
    }    void OnAnimatorIK(int layerIndex)
    {
        Quaternion handRotation = Quaternion.LookRotation(objToAimAt.position - transform.position);
        animator.SetIKRotationWeight(AvatarIKGoal.RightHand, 1.0f);
        animator.SetIKRotation(AvatarIKGoal.RightHand, handRotation);
    }
}
```

Additional resources: SetIKRotation, SetIKPositionWeight.
