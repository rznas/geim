<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TilemapCollider2D.ProcessTilemapChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Processes Tilemap changes for Collider updates immediately, if there are any.

Tilemap changes for Collider updates are normally handled in the LateUpdate step. If immediate changes are required, use this to have the changes in the Tilemap reflected immediately. Calling this will not process changes if the TilemapCollider2D is not enabled.
