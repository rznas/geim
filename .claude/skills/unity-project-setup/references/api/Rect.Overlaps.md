<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect.Overlaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | Other rectangle to test overlapping with. |
| allowInverse | Does the test allow the widths and heights of the Rects to be negative? |

### Description

Returns true if the other rectangle overlaps this one. If `allowInverse` is present and true, the widths and heights of the Rects are allowed to take negative values (ie, the min value is greater than the max), and the test will still work.
