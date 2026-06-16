<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TilemapRenderer.Mode.SRPBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sends batchable Sprites from the Tilemap in chunks to be rendered and can be batched using the Scriptable Render Pipeline (SRP) batching system.

Use this mode if you are using a Scriptable Render Pipeline (SRP) and want Sprites on the Tilemap batch with other related Renderers using the SRP batching system. If you are not using a SRP, this will fallback to the default dynamic batching pipeline.
