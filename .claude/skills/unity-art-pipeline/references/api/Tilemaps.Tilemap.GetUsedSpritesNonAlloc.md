<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetUsedSpritesNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| usedSprites | The array to be filled. |

### Returns

**int** The number of Sprites filled.

### Description

Fills the given array with the total number of different Sprites used in the Tilemap and returns the number of Sprites filled.

If the size of the given array is less than the total number of Sprites used in the Tilemap, this will try to fill the array as much as possible.
