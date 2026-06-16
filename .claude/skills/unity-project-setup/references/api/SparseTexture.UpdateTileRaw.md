<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SparseTexture.UpdateTileRaw.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tileX | Tile X coordinate. |
| tileY | Tile Y coordinate. |
| miplevel | Mipmap level of the texture. |
| data | Tile raw pixel data. |

### Description

Update sparse texture tile with raw pixel values.

This function behaves just like UpdateTile, except the data you pass already needs to be in the final texture format. This is mostly useful for compressed sparse textures, where you'd want to load already precompressed tile data.

Additional resources: UnloadTile, UpdateTile.
