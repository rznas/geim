<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AvatarBuilder.BuildHumanAvatar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | Root object of your transform hierachy. It must be the top most gameobject when you create the avatar. |
| humanDescription | Humanoid description of the avatar. |

### Returns

**Avatar** Returns the Avatar, you must always always check the avatar is valid before using it with Avatar.isValid.

### Description

Create a humanoid avatar.

The avatar is created using the supplied HumanDescription object which specifies the muscle space range limits and retargeting parameters like arm/leg twist and arm/leg stretch. Additional resources: HumanDescription.

```csharp
using System;
using System.Collections.Generic;
using UnityEngine;

// This example automatically builds a humanoid avatar
// for the GameObject it is attached to and assigns it
// to the Animator.
[RequireComponent(typeof(Animator))]
public class HumanAvatarBuilderExample : MonoBehaviour
{
    [Serializable]
    public struct BoneMapping
    {
        public BoneMapping(HumanBodyBones bone)
        {
            this.bone = bone;
            transform = null;
        }

        public HumanBodyBones bone;
        public Transform transform;
    }

    // Lightweight version of the mapping tool available in
    // the Avatar Mapping tab.
    public BoneMapping[] boneMappings =
    {
        new BoneMapping(HumanBodyBones.Hips),
        new BoneMapping(HumanBodyBones.LeftUpperLeg),
        new BoneMapping(HumanBodyBones.RightUpperLeg),
        new BoneMapping(HumanBodyBones.LeftLowerLeg),
        new BoneMapping(HumanBodyBones.RightLowerLeg),
        new BoneMapping(HumanBodyBones.LeftFoot),
        new BoneMapping(HumanBodyBones.RightFoot),
        new BoneMapping(HumanBodyBones.Spine),
        new BoneMapping(HumanBodyBones.Chest),
        new BoneMapping(HumanBodyBones.Neck),
        new BoneMapping(HumanBodyBones.Head),
        new BoneMapping(HumanBodyBones.LeftShoulder),
        new BoneMapping(HumanBodyBones.RightShoulder),
        new BoneMapping(HumanBodyBones.LeftUpperArm),
        new BoneMapping(HumanBodyBones.RightUpperArm),
        new BoneMapping(HumanBodyBones.LeftLowerArm),
        new BoneMapping(HumanBodyBones.RightLowerArm),
        new BoneMapping(HumanBodyBones.LeftHand),
        new BoneMapping(HumanBodyBones.RightHand),
        new BoneMapping(HumanBodyBones.UpperChest)
    };

    HumanBone[] GetHumanBones()
    {
        var humanBones = new List<HumanBone>();

        string[] boneName = HumanTrait.BoneName;
        foreach (var kvp in boneMappings)
        {
            if (kvp.transform == null)
                continue;

            humanBones.Add(new HumanBone
            {
                humanName = boneName[(int)kvp.bone],
                boneName = kvp.transform.name
            });
        }

        return humanBones.ToArray();
    }

    void Start()
    {
        var animator = GetComponent<Animator>();
        var avatar = AvatarBuilder.BuildHumanAvatar(gameObject, new HumanDescription
        {
            human = GetHumanBones(),
            skeleton = Array.Empty<SkeletonBone>(),
        });
        avatar.name = "RuntimeAvatar";
        animator.avatar = avatar;
    }
}
```
