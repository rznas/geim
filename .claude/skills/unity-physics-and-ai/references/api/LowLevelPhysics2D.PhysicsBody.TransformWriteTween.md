<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.TransformWriteTween.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to define a Transform write "tween" for a body.

### Properties

| Property | Description |
| --- | --- |
| angularVelocity | The angular velocity of the body to be used during the lifetime of the tween, in degrees per second. |
| body | The body to be used during the lifetime of the tween. |
| linearVelocity | The linear velocity of the body to be used during the lifetime of the tween. |
| physicsTransform | The physics transform to be used during the lifetime of the tween. |
| positionFrom | The start position of the Transform tween. See UnityEngine.Transform.position. |
| rotationFrom | The start rotation of the Transform. See UnityEngine.Transform.rotation. |
| transformWriteMode | The transform write mode to be used during the lifetime of the tween. Anything other than PhysicsBody.TransformWriteMode.Interpolate or PhysicsBody.TransformWriteMode.Extrapolate will be removed. |
