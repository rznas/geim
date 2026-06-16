<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-unscaledTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The timeScale-independent time for this frame (Read Only). This is the time in seconds since the start of the game.

When called from inside MonoBehaviour's MonoBehaviour.FixedUpdate, it returns Time.fixedUnscaledTime.

 Unlike Time.realtimeSinceStartup, this returns the same value if called multiple times in a single frame and when the Editor is paused. Unlike Time.time this value is not affected by Time.timeScale and Time.maximumDeltaTime.

 See Time and Frame Rate Management in the User Manual for more information about how this property relates to the other Time properties.
