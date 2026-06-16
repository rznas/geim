<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-fixedUnscaledTimeAsDouble.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The double precision timeScale-independent time at the beginning of the last MonoBehaviour.FixedUpdate (Read Only). This is the time in seconds since the start of the game.

Returns the same value if called multiple times in a single frame. Unlike Time.fixedTimeAsDouble this value is not affected by Time.timeScale. Double precision version of Time.fixedUnscaledTime. This offers more precision than a float or single value, particularly over extended periods of real-world time. In almost all cases, you should use the Time.fixedUnscaledTimeAsDouble equivalent over Time.fixedUnscaledTime.
