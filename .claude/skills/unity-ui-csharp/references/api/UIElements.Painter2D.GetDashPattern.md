<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Painter2D.GetDashPattern.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| values | The destination span. Must have a length greater than or equal to the current dash pattern length. Pass an empty span to query the required length without copying. |

### Returns

**int** The number of elements in the dash pattern. If is too short to hold the pattern, returns 0 and no data is copied.

### Description

Copies the current dash pattern into the provided span.
