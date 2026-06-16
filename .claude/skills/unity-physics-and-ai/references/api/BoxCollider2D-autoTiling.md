<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoxCollider2D-autoTiling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the BoxCollider2D's shape is automatically updated based on a SpriteRenderer's tiling properties.

When this is true, the Collider's shape is generated from a SpriteRenderer, if one exists as a component of the parent GameObject. The shape generated is dependent on the SpriteRenderer.drawMode. Regeneration happens when the `autoTiling` property is set to true, and subsequently every time a change is detected in the associated SpriteRenderer.
