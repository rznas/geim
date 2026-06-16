<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetBoneTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| humanBoneId | The human bone to be queried. See the HumanBodyBones enum for a list of possible values. |

### Returns

**Transform** Returns the Transform mapped to the human bone. Returns null if the human bone has no Transform.

### Description

Retrieves the Transform mapped to a human bone based on its id.

Throws **InvalidOperationException** when Animator.avatar is *null*.

Throws **InvalidOperationException** when Animator.avatar is not a valid avatar.

Throws **InvalidOperationException** when Animator.avatar is not a Humanoid avatar.

Throws **IndexOutOfRangeException** when humanBoneId is not between 0 and HumanBodyBones.LastBone.
