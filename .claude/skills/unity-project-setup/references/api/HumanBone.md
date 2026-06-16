<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanBone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mapping between a bone in the model and the conceptual bone in the Mecanim human anatomy.

The names of the Mecanim human bone and the bone in the model are stored along with the limiting muscle values that constrain the bone's rotation during animation.

```csharp
using UnityEngine;
using System.Collections.Generic;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Dictionary<string, string> boneName = new System.Collections.Generic.Dictionary<string, string>();
        boneName["Chest"] = "Bip001 Spine2";
        boneName["Head"] = "Bip001 Head";
        boneName["Hips"] = "Bip001 Pelvis";
        boneName["LeftFoot"] = "Bip001 L Foot";
        boneName["LeftHand"] = "Bip001 L Hand";
        boneName["LeftLowerArm"] = "Bip001 L Forearm";
        boneName["LeftLowerLeg"] = "Bip001 L Calf";
        boneName["LeftShoulder"] = "Bip001 L Clavicle";
        boneName["LeftUpperArm"] = "Bip001 L UpperArm";
        boneName["LeftUpperLeg"] = "Bip001 L Thigh";
        boneName["RightFoot"] = "Bip001 R Foot";
        boneName["RightHand"] = "Bip001 R Hand";
        boneName["RightLowerArm"] = "Bip001 R Forearm";
        boneName["RightLowerLeg"] = "Bip001 R Calf";
        boneName["RightShoulder"] = "Bip001 R Clavicle";
        boneName["RightUpperArm"] = "Bip001 R UpperArm";
        boneName["RightUpperLeg"] = "Bip001 R Thigh";
        boneName["Spine"] = "Bip001 Spine1";
        string[] humanName = HumanTrait.BoneName;
        HumanBone[] humanBones = new HumanBone[boneName.Count];
        int j = 0;
        int i = 0;
        while (i < humanName.Length)
        {
            if (boneName.ContainsKey(humanName[i]))
            {
                HumanBone humanBone = new HumanBone();
                humanBone.humanName = humanName[i];
                humanBone.boneName = boneName[humanName[i]];
                humanBone.limit.useDefaultValues = true;
                humanBones[j++] = humanBone;
            }
            i++;
        }
    }
}
```

Additional resources: HumanDescription, AvatarBuilder.

### Properties

| Property | Description |
| --- | --- |
| boneName | The name of the bone to which the Mecanim human bone is mapped. |
| humanName | The name of the Mecanim human bone to which the bone from the model is mapped. |
| limit | The rotation limits that define the muscle for this bone. |
