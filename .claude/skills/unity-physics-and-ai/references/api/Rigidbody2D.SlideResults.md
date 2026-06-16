<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideResults.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The results of a slide movement performed with Rigidbody2D.Slide.

These results can be used to both tune movement configuration and to implement further logic to react to the specific surfaces encountered when a slide occurs.

**NOTE:** This struct can be used in the Unity Inspector for display purposes.

Additional resources: Rigidbody2D.Slide and SlideMovement.

### Properties

| Property | Description |
| --- | --- |
| iterationsUsed | Returns the number of iterations used when performing a Rigidbody2D.Slide. |
| position | The position that was calculate as a target position to move to when performing a Rigidbody2D.Slide. |
| remainingVelocity | Returns the remaining velocity that couldn't be used when performing a Rigidbody2D.Slide. |
| slideHit | The specific contact found when a slide movement is performed with Rigidbody2D.Slide. |
| surfaceHit | The specific contact found when a slide movement is performed with Rigidbody2D.Slide. |
