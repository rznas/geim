<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkeletonBone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Details of the Transform name mapped to the skeleton bone of a model and its default position and rotation in the T-pose.

The skeleton models used in Unity have multiple bones. The SkeletonBone struct has properties that are used to describe the position, rotation and scale of each bone. The bones are not shown. A MonoBehaviour.OnDrawGizmosSelected tool can be created to view the skeleton. An array of SkeletonBone positions can be used to make a line model using Gizmos.DrawLine.

An array of SkeletonBones are used in HumanDescription.skeleton.

### Properties

| Property | Description |
| --- | --- |
| name | The name of the Transform mapped to the bone. |
| position | The T-pose position of the bone in local space. |
| rotation | The T-pose rotation of the bone in local space. |
| scale | The T-pose scaling of the bone in local space. |
