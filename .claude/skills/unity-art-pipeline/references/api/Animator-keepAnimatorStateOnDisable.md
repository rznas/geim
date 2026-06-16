<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator-keepAnimatorStateOnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the behaviour of the Animator component when a GameObject is inactive.

Set to true to keep the current state of the Animator controller.
 Set to false to clear the current state of the Animator controller.
 The default value is false.


When this property is set to true, the Animator also preserves the animated values for inactive GameObjects. For example, a GameObject's transform is animated from x=0 to x=3 while it is active. When this GameObject is inactive, it keeps the animated value x=3 instead of x=0.


This property is serializable and can be saved in a Prefab.
 This property applies to the AnimatorController associated with the Animator. This property does not affect AnimatorControllerPlayable.
