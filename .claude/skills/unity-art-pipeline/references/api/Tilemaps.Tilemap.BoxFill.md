<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.BoxFill.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the Tile on the Tilemap. |
| tile | Tile to place. |
| startX | The minimum X coordinate limit to fill to. |
| startY | The minimum Y coordinate limit to fill to. |
| endX | The maximum X coordinate limit to fill to. |
| endY | The maximum Y coordinate limit to fill to. |

### Description

Does a box fill with the given Tile on the Tilemap. Starts from given coordinates and fills the limits from start to end (inclusive).

If the limits are larger than the Tilemap bounds, the limits will be capped to the Tilemap bounds. Refer to Scriptable Tiles and Tilemap for more information.
