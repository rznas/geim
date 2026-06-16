<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetIKPositionWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| goal | The AvatarIKGoal that is queried. |

### Description

Gets the translative weight of an IK goal (0 = at the original animation before IK, 1 = at the goal).

An IK goal is a target position and rotation for a specific body part. Unity can calculate how to move the part toward the target from the starting point (ie, the current position and rotation obtained from the animation).

The point calculated by the IK is also influenced by a weight value in the range 0..1 that determines how far between the start and the goal to aim. This function returns the current weight value for the position of the goal.

Additional resources: GetIKPosition, SetIKPosition.
