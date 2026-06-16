<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController.CreateAnimatorControllerAtPathWithClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path where the AnimatorController will be created. |
| clip | The default clip that will be played by the AnimatorController. |

### Description

Creates an AnimatorController at the given path, and automatically create an AnimatorLayer with an AnimatorStateMachine that will add a State with the AnimationClip in it.

This function pushes an Undo operation.
