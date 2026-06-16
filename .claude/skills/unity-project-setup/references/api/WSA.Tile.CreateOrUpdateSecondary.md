<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WSA.Tile.CreateOrUpdateSecondary.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The data used to create or update secondary tile. |
| pos | The coordinates for a request to create new tile. |
| area | The area on the screen above which the request to create new tile will be displayed. |

### Returns

**Tile** New Tile object, that can be used for further work with the tile.

### Description

Creates new or updates existing secondary tile.

TileId is required to be set in data, displayName is required when creating and can not be updated. When used to create new tile, this function displays a request on the screen. Tile will be created if user agrees to pin it to start screen.
