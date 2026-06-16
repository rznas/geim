<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator-writeDefaultValuesOnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether playable graph values are reset or preserved when the Animator is disabled.

Set this property to true to reset the playable graph to its default values when the Animator is disabled.
 Set to this property to false (default value) to preserve the current state and values of the playable graph, and to call the Animator.WriteDefaultValues method when the Animator is disabled.


Setting this property to false also preserves animated values when a GameObject is disabled. For example, if a GameObject has animated values from x=0 to x=3, when the GameObject is disabled, it preserves the animated value x=3.


This property is serializable. You can save it in a Prefab.
