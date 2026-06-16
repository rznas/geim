<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetIndex | The avatar body part that is queried. |
| targetNormalizedTime | The current state Time that is queried. |

### Description

Sets an AvatarTarget and a targetNormalizedTime for the current state.

Once the frame is evaluated, use Animator.targetPosition and Animator.targetRotation to query the position and rotation.
