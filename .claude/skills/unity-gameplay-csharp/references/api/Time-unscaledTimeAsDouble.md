<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-unscaledTimeAsDouble.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The double precision timeScale-independent time for this frame (Read Only). This is the time in seconds since the start of the game.

Double precision version of Time.unscaledTime. This offers more precision than a float or single value, particularly over extended periods of real-world time. In almost all cases, use the `unscaledTimeAsDouble` equivalent over Time.unscaledTime.

When called from inside MonoBehaviour's MonoBehaviour.FixedUpdate, it returns the unscaled fixed time.

Returns the same value if called multiple times in a single frame. Unlike Time.timeAsDouble this value is not affected by Time.timeScale.
