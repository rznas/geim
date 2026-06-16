<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.InAnimationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| driver | An AnimationModeDriver object that tests if AnimationMode has been locked specifically for this driver. |

### Description

Checks whether the Editor is in Animation mode.

InAnimationMode returns a value of true or false, indicating whether the animation is being controlled by AnimationMode. If InAnimationMode returns `true` then SampleAnimationClip can be used to animate the attached object.
 
 **Note:** The script example at AnimationMode shows how InAnimationMode can be used.
