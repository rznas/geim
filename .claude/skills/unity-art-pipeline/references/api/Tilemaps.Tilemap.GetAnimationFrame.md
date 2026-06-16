<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetAnimationFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Grid cell position. |

### Returns

**int** Returns the current animation frame. Returns -1 when there is no animation for the Tile at the given position.

### Description

Retrieves the current animation frame for a Tile at the given position.

This method returns the current animation frame for a Tile at the given position. If there is no animation for the Tile at the given position, then this returns -1.
