<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetUsedTilesNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| usedTiles | The array to be filled. |

### Returns

**int** The number of Tiles filled.

### Description

Fills the given array with the total number of different Tiles used in the Tilemap and returns the number of Tiles filled.

If the size of the given array is less than the total number of Tiles used in the Tilemap, this will try to fill the array as much as possible. Refer to Scriptable Tiles and Tilemap for more information.
