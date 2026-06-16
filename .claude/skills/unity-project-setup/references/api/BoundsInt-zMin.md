<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoundsInt-zMin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimal z point of the box.

Only points with a z component greater than or equal to this value are contained in the box.

Sets the minimum value of BoundsInt's z point. If you enter a minimum value that is greater than the current maximum value, then the entered value becomes the new maximum value and the previous maximum value becomes the new minimum value. The position and size of the BoundsInt is then adjusted based on the new minimum and maximum values.
