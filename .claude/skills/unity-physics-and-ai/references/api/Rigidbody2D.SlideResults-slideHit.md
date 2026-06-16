<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideResults-slideHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The specific contact found when a slide movement is performed with Rigidbody2D.Slide.

When a slide along a surface occurs, the slide may hit a surface tangent to the movement. This RaycastHit2D represents that contact.

It is possible that movement along a surface occurs without any contact to a surface. In this case, the RaycastHit2D will be invalid.

**NOTE:** This contact does not represent the surface itself that the movement is tangent to. That is represented by Rigidbody2D.SlideResults.surfaceHit.

Additional resources: Rigidbody2D.SlideResults.surfaceHit, Rigidbody2D.Slide and SlideMovement.
