<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SparseTexture.UnloadTile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tileX | Tile X coordinate. |
| tileY | Tile Y coordinate. |
| miplevel | Mipmap level of the texture. |

### Description

Unload sparse texture tile.

This function removes a tile at (tileX,tileY) coordinates from memory. If a tile is not present, then this function does nothing.

Additional resources: UpdateTile.
