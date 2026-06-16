<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationHumanStream.GetGoalRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The AvatarIKGoal that is queried. |

### Returns

**Quaternion** The rotation of this IK goal.

### Description

Returns the rotation of this IK goal in world space.

Some playable like AnimationClipPlayable can generate IK goals. This function can be used to retrieve goal generate from a previous playable in the graph.
