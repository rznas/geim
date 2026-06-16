<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetIKPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| goal | The AvatarIKGoal that is queried. |

### Returns

**Vector3** Return the current position of this IK goal in world space.

### Description

Gets the position of an IK goal.

An IK goal is a target position and rotation for a specific body part. Unity can calculate how to move the part toward the target from the starting point (ie, the current position and rotation obtained from the animation).

This function gets the current position of the specified goal in world space.

Additional resources: GetIKPositionWeight, SetIKPosition.
