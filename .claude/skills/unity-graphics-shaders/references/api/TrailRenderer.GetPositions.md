<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer.GetPositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The array of positions to retrieve. |

### Returns

**int** How many positions were actually stored in the output array.

### Description

Get the positions of all vertices in the trail.

This method is preferred to GetPosition when retrieving all positions, as it is more efficient to get all positions using a single command than to get each position individually.

Additional resources: positionCount property.

Additional resources: GetPosition function.
