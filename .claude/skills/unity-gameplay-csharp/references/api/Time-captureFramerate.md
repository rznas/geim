<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-captureFramerate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The reciprocal of Time.captureDeltaTime.

`captureFramerate` is the equivalent of (1.0 / Time.captureDeltaTime) rounded to the nearest integer.

Setting `captureFramerate` also sets Time.captureDeltaTime to the equivalent inverse.

Note that a value of zero for `captureFramerate` is equivalent to value of zero for `captureDeltaTime`.
