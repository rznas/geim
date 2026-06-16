<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer.SetPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Which position to set. |
| position | The new position. |

### Description

Set the position of a vertex in the trail.

You can only use this method to modify existing positions in the Trail. You cannot use it to add new positions.

When setting multiple positions, consider using SetPositions instead because it is much faster than making individual function calls for each position.

Additional resources: positionCount property.
