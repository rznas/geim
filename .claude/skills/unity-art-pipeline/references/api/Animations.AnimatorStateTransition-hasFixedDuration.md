<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateTransition-hasFixedDuration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the duration of the transition is reported in a fixed duration in seconds or as a normalized time.

If `hasFixedDuration` is true, the transition duration is in seconds.

 If `hasFixedDuration` is false, the transition duration is in normalized time.

 **Note:** In normalized time, a duration of 1 makes the transition the same length as the state that triggered it. A value of 2, for instance, would make the transition twice as long as the state that triggered it.
