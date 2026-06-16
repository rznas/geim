<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateTransition-exitTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If AnimatorStateTransition.hasExitTime is true, **exitTime** represents the exact time at which the transition can take effect.
 This is represented in normalized time, so for example an exit time of 0.75 means that on the first frame where 75% of the animation has played, the Exit Time condition will be true. On the next frame, the condition will be false.
 For looped animations, transitions with exit times smaller than 1 will be evaluated every loop, so you can use this to time your transition with the proper timing in the animation, every loop.
 Transitions with exit times greater than one will be evaluated only once, so they can be used to exit at a specific time, after a fixed number of loops. For example, a transition with an exit time of 3.5 will be evaluated once, after three and a half loops.

**Known limitation:** You need at least one evaluation of your state before you can trigger an exitTime condition, meaning a transition with an exitTime of 0 will never be fired on the first frame.
