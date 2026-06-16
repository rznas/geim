<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorUpdateMode.UnscaledTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animator updates independently of Time.timeScale, maintaining real-time animation progression.

This mode is beneficial when animations should continue unaffected by global time scale adjustments, such as when animating UI elements or background effects when the game is paused or slowed down. It guarantees consistent playback speed irrespective of time scale changes, enhancing player experience during time manipulation scenarios.
