<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer.SetPositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The array of positions to set. |

### Description

Sets the positions of all vertices in the trail.

You can only use this method to modify existing positions in the Trail. You cannot use it to add new positions.

When setting all positions, use this method instead of SetPosition because it is more efficient to set all positions using a single command than to set each position individually.

Additional resources: positionCount property.

Additional resources: SetPosition function.
