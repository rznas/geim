<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The configuration that controls how a Rigidbody2D.Slide method behaves.

**NOTE:** This struct can be used in the Unity Inspector for configuration purposes.

Additional resources: Rigidbody2D.Slide and SlideResults.

### Properties

| Property | Description |
| --- | --- |
| gravity | The gravity to be applied to the slide position. |
| gravitySlipAngle | When the gravity movement causes a contact with a Collider2D, slippage maybe occur if the surface angle is greater than this angle. |
| layerMask | A LayerMask that will be used when determining what Collider2D should be detected. |
| maxIterations | Controls the maximum number of iterations to perform when determining how a Rigidbody2D will slide. |
| selectedCollider | The specific Collider2D attached to this Rigidbody2D to be used to detect contacts. |
| startPosition | The start position to slide the Rigidbody2D from. |
| surfaceAnchor | The direction and distance to use when detecting if a surface is nearby during a slide iteration. |
| surfaceSlideAngle | When the velocity movement causes a contact with a Collider2D, a slide maybe occur if the surface angle is less than this angle. |
| surfaceUp | A reference direction used to calculate contact angles. |
| useAttachedTriggers | Can be used to select whether any Collider2D attached to this Rigidbody2D (that are configured as a trigger) are used to detect contacts. |
| useLayerMask | Whether the specified Rigidbody2D.SlideMovement.layerMask should be used or not when determining what Collider2D should be detected. |
| useNoMove | Controls if any Rigidbody2D movement will happen or not. |
| useSimulationMove | Controls whether the Rigidbody2D is instantly moved to the calculated position or is moved with Rigidbody2D.MovePosition. |
| useStartPosition | Whether the specified Rigidbody2D.SlideMovement.startPosition should be used or not. |

### Public Methods

| Method | Description |
| --- | --- |
| SetLayerMask | A helper method that simultaneously sets both the Rigidbody2D.SlideMovement.layerMask to the specified mask but also sets Rigidbody2D.SlideMovement.useLayerMask to true. |
| SetStartPosition | A helper method that simultaneously sets both the Rigidbody2D.SlideMovement.startPosition to the specified /position but also sets Rigidbody2D.SlideMovement.useStartPosition to true. |
