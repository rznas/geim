<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideResults-surfaceHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The specific contact found when a slide movement is performed with Rigidbody2D.Slide.

When a slide along a surface occurs, a surface contact will be detected either from using a Rigidbody2D.SlideMovement.surfaceAnchor or using Rigidbody2D.SlideMovement.gravityScale.

In short, if the movement anchors to a surface or if gravity causes a contact with the surface, this RaycastHit2D represents that contact.

**NOTE:** This contact does not necessarily represent the surface that movement is tangent to. That is represented by Rigidbody2D.SlideResults.slideHit.

Additional resources: Rigidbody2D.SlideResults.slideHit, Rigidbody2D.Slide and SlideMovement.
