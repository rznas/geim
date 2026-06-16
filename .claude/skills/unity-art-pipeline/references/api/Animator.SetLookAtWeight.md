<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetLookAtWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| weight | (0-1) the global weight of the LookAt, multiplier for other parameters. |
| bodyWeight | (0-1) determines how much the body is involved in the LookAt. |
| headWeight | (0-1) determines how much the head is involved in the LookAt. |
| eyesWeight | (0-1) determines how much the eyes are involved in the LookAt. |
| clampWeight | (0-1) 0.0 means the character is unrestrained in motion. 1.0 means the character is clamped (look at becomes impossible). 0.5 means the character is able to move on half of the possible range (180 degrees). |

### Description

Set look at weights.
