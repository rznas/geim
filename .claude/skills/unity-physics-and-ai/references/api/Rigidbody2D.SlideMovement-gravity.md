<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-gravity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The gravity to be applied to the slide position.

In a similar way to how the Physics2D.gravity works, the gravity vector here is scaled by time and applied as movement to the slide position. However, unlike Physics2D.gravity, this has no way of increasing the velocity to produce an acceleration so if this is required then this should be maintained and the current accumulated gravity velocity passed in. The reason that gravity is separated from the provided `velocity` is that it has a different behaviour in that it can produce slippage on surfaces where the angle is higher than Rigidbody2D.SlideMovement.gravitySlipAngle.

**NOTE:** By default this is (0, -9.81). Using Vector2.zero results in no gravity being applied.

Additional resources: Rigidbody2D.Slide and SlideResults.
