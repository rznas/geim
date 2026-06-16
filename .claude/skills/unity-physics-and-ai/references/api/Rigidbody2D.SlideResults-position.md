<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideResults-position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The position that was calculate as a target position to move to when performing a Rigidbody2D.Slide.

When a Rigidbody2D.Slide command is complete, this will be the position that both the Rigidbody2D.position and Transform.position are set to however, if Rigidbody2D.SlideMovement.useSimulationMove is enabled, then neither the Rigidbody2D.position and Transform.position will be changd upon return but a Rigidbody2D.MovePosition would have been called using this position. If Rigidbody2D.SlideMovement.useNoMove is enabled then no move is processed at all but is simply returned here.

Additional resources: Rigidbody2D.SlideMovement.useNoMove, Rigidbody2D.SlideMovement.useSimulationMove, Rigidbody2D.Slide and SlideMovement.
