<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.MoveTowards.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Moves a point `current` towards `target`.

This is essentially the same as Vector4.Lerp but instead the function will ensure that the speed never exceeds `maxDistanceDelta`. Negative values of `maxDistanceDelta` pushes the vector away from `target`.
