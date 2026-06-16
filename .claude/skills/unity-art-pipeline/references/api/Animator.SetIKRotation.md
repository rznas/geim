<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetIKRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| goal | The AvatarIKGoal that is set. |
| goalRotation | The rotation of the goal in world space which should follow Unity's world coordinates convention (see below). |

### Description

Sets the rotation of an IK goal.

An IK goal is a specified target position and rotation for a specific body part. Unity calculates how to move the body part towards this target from a starting point. This starting point could be, for example, the current position and rotation obtained from an animation.

This function sets the IK goal rotation in world space. When specifying the IK goal rotation, it should follow Unity's world coordinates convention: • The `X-Axis` is parallel to the palm of the hand (or sole of the foot), pointing sideways to the right of the hand (or foot).
 • The `Y-Axis` is perpendicular to the top of the hand (or foot), pointing upwards.
 • The `Z-Axis` is parallel to the palm of the hand (or sole of the foot), pointing forwards toward the fingers (or toes).


It is recommended that the bone orientation of the avatar skeleton pose should also follow Unity's world coordinates convention. If your avatar skeleton pose follows a different convention, the bone rotation applied to the corresponding `GameObject` might differ from the IK goal rotation.

In addition, you can set a weight value to set the amount of influence that the IK goal rotation has over the starting rotation. Use the `SetIKRotationWeight` method to set a weight value between 0..1 where a weight of 0 means no influence and a weight of 1 means full influence.

The following code example demonstrates how to use the `SetIKRotation` method and `SetIKRotationWeight` method.

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

Additional resources: SetIKRotationWeight, SetIKPosition.
