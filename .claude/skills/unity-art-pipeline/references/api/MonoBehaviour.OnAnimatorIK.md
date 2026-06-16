<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnAnimatorIK.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerIndex | The index of the layer on which the IK solver is called. |

### Description

Callback for setting up animation IK (inverse kinematics).

`OnAnimatorIK` is called by the Animator component immediately before it updates its internal IK system. This callback can be used to set the positions of the IK goals and their respective weights.

`OnAnimatorIK` is only called if the following requirements are met:

- The Animator component must reference an Avatar configured as Humanoid. Generic or Legacy avatars do not support IK.
- The Animator Controller layer you want to process IK on must have the IK Pass option enabled.
- The Animator component must be enabled and playing an animation on the GameObject.
- The script containing `OnAnimatorIK` must be attached to the GameObject with the Animator component.

Common uses include:

- Setting the position and rotation of IK goals, such as hands and feet, to interact with objects or reach targets in the environment.
- Blending between animation-driven and IK-driven motion by adjusting IK weights.
- Creating procedural animations, such as looking at a target or reaching for an object.

Additional resources: AnimatorController, Avatar, Animator.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    float leftFootPositionWeight;
    float leftFootRotationWeight;
    Transform leftFootObj;    private Animator animator;    void Start()
    {
        animator = GetComponent<Animator>();
    }    void OnAnimatorIK(int layerIndex)
    {
        animator.SetIKPositionWeight(AvatarIKGoal.LeftFoot, leftFootPositionWeight);
        animator.SetIKRotationWeight(AvatarIKGoal.LeftFoot, leftFootRotationWeight);
        animator.SetIKPosition(AvatarIKGoal.LeftFoot, leftFootObj.position);
        animator.SetIKRotation(AvatarIKGoal.LeftFoot, leftFootObj.rotation);
    }
}
```

Additional resources: Animator.SetIKPosition, Animator.SetIKPositionWeight, Animator.SetIKRotation, Animator.SetIKRotationWeight.
