<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoundsInt-zMax.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximal z point of the box.

Only points with a z component less than this value are contained in the box.

Sets the maximum value of BoundsInt's z point. If you enter a maximum value that is less than the current minimum value, then the entered value becomes the new minimum value and the previous minimum value becomes the new maximum value. The position and size of the BoundsInt is then adjusted based on the new minimum and maximum values.
