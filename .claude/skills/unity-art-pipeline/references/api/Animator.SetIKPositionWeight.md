<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetIKPositionWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| goal | The AvatarIKGoal that is set. |
| value | The translative weight. |

### Description

Sets the translative weight of an IK goal (0 = at the original animation before IK, 1 = at the goal).

An IK goal is a target position and rotation for a specific body part. Unity can calculate how to move the part toward the target from the starting point (ie, the current position and rotation obtained from the animation).

This function sets a weight value in the range 0..1 to determine how far between the start and goal positions the IK will aim. The position itself is set separately using SetIKPosition.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Transform objToPickUp;
    Animator animator;    void Start()
    {
        animator = GetComponent<Animator>();
    }    void OnAnimatorIK(int layerIndex)
    {
        // Retrieves the value of the parameter "RightHandReach" that must be created in the AnimatorController.
        float reach = animator.GetFloat("RightHandReach");        // Sets IK Position and IK Position Weight.
        animator.SetIKPositionWeight(AvatarIKGoal.RightHand, reach);
        animator.SetIKPosition(AvatarIKGoal.RightHand, objToPickUp.position);
    }
}
```

Additional resources: SetIKPosition, SetIKRotationWeight.
