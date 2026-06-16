<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer.GetVisiblePositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The array of positions to retrieve. |

### Returns

**int** How many positions were actually stored in the output array.

### Description

Get the visible positions of all vertices in the trail.

This method is similar to GetPositions, except that it will not return positions that the Trail Renderer created while emitting was set to `false`.
