<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-captureDeltaTimeRational.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Slows your application’s playback time to allow Unity to save screenshots in between frames.

Same as captureDeltaTime but using a RationalTime representation. The returned timeAsRational shares the same discretization increment value (TicksPerSecond). Setting it to a value of 0 or invalid restores the normal Unity time management.
