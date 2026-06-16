<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of mathematical operations that are useful for physics. These operations do not form a fully comprehensive mathematics library, they simply provide operations that are usually required when interacting with physics.

### Static Properties

| Property | Description |
| --- | --- |
| PI | Get the value of PI used internally by the physics system. Using this will help with determinism. |
| TAU | Get the value of tau (2 * PI) used internally by the physics system. Using this will help with determinism. |

### Static Methods

| Method | Description |
| --- | --- |
| AngularVelocityToQuaternion | Calculate a UnityEngine.Quaternion given a 2D angular velocity and a time to integrate over using the selected transform plane. |
| Atan2 | Calculate the arc-tangent i.e. the angle of the provided slope y/x. This operates as deterministically as possible across platforms. |
| CosSin | Calculate both the Cosine and Sine of the specified angle. |
| GetRelativeMatrix | Get the relative transformation matrix between the two specified transforms using the specified transform plane. |
| GetRotationAxes | Get the used rotation axes, given the specified transform plane. This is the inverse of PhysicsMath.GetRotationIgnoredAxes. |
| GetRotationIgnoredAxes | Get the ignored rotation axes, given the specified transform plane. This is the inverse of PhysicsMath.GetRotationAxes. |
| GetTranslationAxes | Get the used translation axes, given the specified transform plane. This is the inverse of PhysicsMath.GetTranslationIgnoredAxes. |
| GetTranslationIgnoredAxes | Get the ignored translation axes, given the specified transform plane. This is the inverse of PhysicsMath.GetTranslationAxes. |
| GetTranslationIgnoredAxis | Get the ignored translation axis, given the specified transform plane. |
| MaxAbsComponent | Get the maximum absolute value component from the specified vector. |
| MinAbsComponent | Get the minimum absolute value component from the specified vector. |
| SpringDamper | Calculate a one-dimensional mass-spring-damper simulation which drives towards a zero translation. You can then compute the new position using: "translation += newSpeed * deltaTime;" |
| Swizzle | Transform a 3D position into a 3D position using the selected transform plane. |
| ToDegrees | Convert radians to degrees. This operates as deterministically as possible across platforms. See PhysicsMath.ToRadians. |
| ToPhysicsTransform | Transform a 3D UnityEngine.Transform position and rotation to a 2D PhysicsTransform. Scale is not part of a PhysicsTransform therefore it is ignored. |
| ToPosition2D | Transform a 3D position into a 2D position using the selected transform plane. |
| ToPosition3D | Transform a 2D position into a 3D position using the selected transform plane. |
| ToRadians | Convert degrees to radians. This operates as deterministically as possible across platforms. See PhysicsMath.ToDegrees. |
| ToRotation2D | Transform a 3D rotation into a 2D angle using the selected transform plane. |
| ToRotationFast3D | Transform a 2D angle into a 3D rotation using the selected transform plane (Fast). The transformation is fast because the rotation is simplified by the fact that only a single axis of rotation is handled. All other axis rotations are reset to zero. |
| ToRotationSlow3D | Transform a 2D angle into a 3D rotation using the selected transform plane (Slow). The transformation is slower because the rotation is more complex due to the fact that changing a single axis of rotation requires it to not affect any other axis rotations. |
