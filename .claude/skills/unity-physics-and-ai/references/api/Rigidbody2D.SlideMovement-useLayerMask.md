<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-useLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the specified Rigidbody2D.SlideMovement.layerMask should be used or not when determining what Collider2D should be detected.

When false, the layers already associated with the Collider2D attached to the Rigidbody2D will be used along with the Layer Collision Matrix configuration to determine which Collider2D will be detected.

When true, the specified Rigidbody2D.SlideMovement.layerMask will be used to determine which Collider2D will be detected and any Layer Collision Matrix configuration will be ignored.

Additional resources: Rigidbody2D.SlideMovement.layerMask, Rigidbody2D.Slide and SlideResults.
