<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-spriteBatchVertexThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the max vertex limit for Sprite batching.

Unity will automatically batch SpriteRenderers into the same draw call if they share the same Material and fulfill other criteria. The default limit is 300 vertices and this setting allows users to override this limit in the range (300, 8000). See also: Dynamic Batching.
