<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetIKPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| goal | The AvatarIKGoal that is set. |
| goalPosition | The position in world space. |

### Description

Sets the position of an IK goal.

An IK goal is a target position and rotation for a specific body part. Unity can calculate how to move the part toward the target from the starting point (ie, the current position and rotation obtained from the animation).

This function sets the position of the ultimate goal in world space; the actual point in space where the body part ends up is also influenced by a weight parameter that specifies how far between the start and the goal the IK should aim (a value in the range 0..1).

This function should always be called in MonoBehaviour.OnAnimatorIK.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Transform objToPickUp;
    Animator animator;    void Start()
    {
        animator = GetComponent<Animator>();
    }    void OnAnimatorIK(int layerIndex)
    {
        float reach = animator.GetFloat("RightHandReach");
        animator.SetIKPositionWeight(AvatarIKGoal.RightHand, reach);
        animator.SetIKPosition(AvatarIKGoal.RightHand, objToPickUp.position);
    }
}
```

Additional resources: SetIKPositionWeight, SetIKRotation.
