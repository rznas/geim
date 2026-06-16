<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-surfaceUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A reference direction used to calculate contact angles.

Both Rigidbody2D.SlideMovement.surfaceSlideAngle and Rigidbody2D.SlideMovement.gravitySlipAngle use this to determine the surface angle.

The magnitude of this vector is typically unimportant as it is automatically normalized, however, if the magnitude is zero then both the Rigidbody2D.SlideMovement.surfaceSlideAngle and Rigidbody2D.SlideMovement.gravitySlipAngle will be ignored resulting in always sliding and slipping. This can be used for moving in a "top down" view where gravity is not used and slipping is always required in all directions.

**NOTE:** By default, this value is Vector2.up. 

Additional resources: Rigidbody2D.Slide and SlideResults.
