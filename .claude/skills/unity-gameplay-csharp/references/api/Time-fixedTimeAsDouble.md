<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-fixedTimeAsDouble.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The double-precision time at which the last MonoBehaviour.FixedUpdate started in seconds since the start of the game (Read Only).

Fixed time is updated in regular intervals (equal to fixedDeltaTime) until the timeAsDouble property is reached. This property is the double precision version of Time.fixedTime and offers more precision than a float or single value, particularly over extended periods of real-world time. In almost all cases, prefer Time.fixedTimeAsDouble over Time.fixedTime.
