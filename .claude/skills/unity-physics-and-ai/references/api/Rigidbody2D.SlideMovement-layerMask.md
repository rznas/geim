<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-layerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A LayerMask that will be used when determining what Collider2D should be detected.

This Layer will only be used when Rigidbody2D.SlideMovement.useLayerMask is true in which case, the specified LayerMask will be used to determine which Collider2D will be detected and any Layer Collision Matrix configuration will be ignored.

In other words, this LayerMask can be used to override and explicitly specify which layers will be used to detect Collider2D.

Additional resources: Rigidbody2D.SlideMovement.useLayerMask, Rigidbody2D.Slide and SlideResults.
