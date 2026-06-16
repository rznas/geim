<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-realtimeSinceStartup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The real time in seconds since the game started (Read Only).

In most cases, use Time.realtimeSinceStartupAsDouble, which offers more precision, particularly over extended periods of real-world time. Refer to its documentation for information about both properties. Use `Time.realtimeSinceStartup` with other single-precision properties that return float instead of double such as `fixedTime`, `fixedUnscaledTime`, `time`, `timeSinceLevelLoad`, and `unscaledTime`.
