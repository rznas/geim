<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect-playRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier that Unity applies to the delta time when it updates the VisualEffect. The default value is 1.0f.

To play the visual effect faster than normal, set this property to a value greater than 1.0f. To play the visual effect slower than normal, set this property to a value between 0.0f and 1.0f. Unity does not serialize this property. This means that, after loading, it automatically resets to the default value.
