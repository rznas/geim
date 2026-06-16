<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationHumanStream.GetGoalPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The AvatarIKGoal that is queried. |

### Returns

**Vector3** The position of this IK goal.

### Description

Returns the position of this IK goal in world space.

Some playable like AnimationClipPlayable can generate IK goals. This function can be used to retrieve goal generate from a previous playable in the graph.
