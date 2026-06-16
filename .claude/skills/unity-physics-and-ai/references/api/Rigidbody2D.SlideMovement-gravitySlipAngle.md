<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-gravitySlipAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When the gravity movement causes a contact with a Collider2D, slippage maybe occur if the surface angle is greater than this angle.

Use this angle threshold to control whether slippage will occur on surface slopes above the threshold.

The angle is in degrees and is relative to the Rigidbody2D.SlideMovement.surfaceUp vector.

**NOTE:** Slippage will only occur if no initial `velocity` is passed to the Rigidbody2D.Slide method. Slippage will always occur if Rigidbody2D.SlideMovement.surfaceUp has zero magnitude.

Additional resources: Rigidbody2D.SlideMovement.surfaceSlideAngle, Rigidbody2D.Slide and SlideResults.
