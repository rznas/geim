<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanTrait.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Details of all the human bone and muscle types defined by Mecanim.

### Static Properties

| Property | Description |
| --- | --- |
| BoneCount | The number of human bone types defined by Mecanim. |
| BoneName | Array of the names of all human bone types defined by Mecanim. |
| MuscleCount | The number of human muscle types defined by Mecanim. |
| MuscleName | Array of the names of all human muscle types defined by Mecanim. |
| RequiredBoneCount | The number of bone types that are required by Mecanim for any human model. |

### Static Methods

| Method | Description |
| --- | --- |
| BoneFromMuscle | Return the bone to which a particular muscle is connected. |
| GetBoneDefaultHierarchyMass | Gets the bone hierarchy mass. |
| GetMuscleDefaultMax | Get the default maximum value of rotation for a muscle in degrees. |
| GetMuscleDefaultMin | Get the default minimum value of rotation for a muscle in degrees. |
| GetParentBone | Returns parent humanoid bone index of a bone. |
| MuscleFromBone | Obtain the muscle index for a particular bone index and "degree of freedom". |
| RequiredBone | Is the bone a member of the minimal set of bones that Mecanim requires for a human model? |
