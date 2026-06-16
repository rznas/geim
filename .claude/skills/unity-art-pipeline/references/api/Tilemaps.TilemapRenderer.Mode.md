<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TilemapRenderer.Mode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines how the TilemapRenderer should batch the sprites from tiles for rendering.

### Properties

| Property | Description |
| --- | --- |
| Chunk | Batches each Sprite from the Tilemap into grouped chunks to be rendered. |
| Individual | Sends each Sprite from the Tilemap to be rendered individually. |
| SRPBatch | Sends batchable Sprites from the Tilemap in chunks to be rendered and can be batched using the Scriptable Render Pipeline (SRP) batching system. |
