<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SparseTexture.UpdateTile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tileX | Tile X coordinate. |
| tileY | Tile Y coordinate. |
| miplevel | Mipmap level of the texture. |
| data | Tile color data. |

### Description

Update sparse texture tile with color values.

This function makes a tile at (tileX,tileY) coordinates resident in memory, and updates its pixels. If a tile is already resident, then only the pixels are updated.

Data passed should have enough pixels for the tile (tileWidth*tileHeight elements). Exception can be small mipmap levels that are smaller than tile size; then it's ok to pass enough data for the mip level size.

UpdateTile only works for non-compressed color formats. If you use a sparse texture with a compressed format, use UpdateTileRaw and pass raw tile data bytes (e.g. DXT/BCn-compressed data). UpdateTileRaw can also be more efficient if texture format is not RGBA32, as then Unity does not have to convert from Color32 data into the underlying texture format.

Additional resources: UnloadTile, UpdateTileRaw.
