<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-useSimulationMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether the Rigidbody2D is instantly moved to the calculated position or is moved with Rigidbody2D.MovePosition.

When a slide movement is complete, a new Rigidbody2D position has been calculated however, the Rigidbody2D hasn't actually been moved at this stage. It is here that the Rigidbody2D can be instantly positioned at the new position or the move can be deferred using Rigidbody2D.MovePosition. 

When this is enabled, Rigidbody2D.MovePosition is used to perform the move when the simulation next runs. When this is disabled, the Rigidbody2D is instantly set at its new position. It should be noted that both the Rigidbody2D and the Transform will be updated when this happens and that any Rigidbody2D interpolation continues to work as expected.

**NOTE:** If Rigidbody2D.SlideMovement.useNoMove is enabled then a simulation move cannot be used and should be disabled.

Additional resources: Rigidbody2D.SlideMovement.useNoMove, Rigidbody2D.Slide and SlideResults.
