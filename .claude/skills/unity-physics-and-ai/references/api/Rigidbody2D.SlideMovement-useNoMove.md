<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-useNoMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls if any Rigidbody2D movement will happen or not.

When a slide movement is complete, a new Rigidbody2D position has been calculated, however it may be preferred to not perform the movement of the Rigidbody2D at all.

When this is enabled, no movement will occur. The Rigidbody2D.SlideResults.position always returns the calculated position so that can be used to move the Rigidbody2D.

**NOTE:** If this is enabled then a Rigidbody2D.SlideMovement.useSimulationMove cannot be used and should be disabled.

Additional resources: Rigidbody2D.SlideResults.position, Rigidbody2D.Slide and SlideResults.
