<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsRotate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a 2D rotation.

### Static Properties

| Property | Description |
| --- | --- |
| down | A rotation of -PI/2 Radians (-90 Degrees or +270 Degrees). |
| identity | The identity rotation i.e. no rotation. |
| left | A rotation of +PI Radians (+/- 180 Degrees). |
| right | A rotation of zero Radians. This is the same as identity. See PhysicsRotate.identity. |
| up | A rotation of +PI/2 Radians (+90 Degrees). |

### Properties

| Property | Description |
| --- | --- |
| angle | Get the angle which this rotation represents, in radians. |
| cos | The cosine of the rotation angle. |
| direction | The rotation direction where X = cos(angle) and Y = sin(angle). This should always be normalized otherwise warnings will be produced when used, however this is not enforced. See PhysicsRotate.isNormalized and PhysicsRotate.Normalized. |
| isNormalized | Is the rotation normalized? If not, it should be normalized using PhysicsRotate.Normalized. |
| isValid | Check if the rotation is valid (not NaN and Normalized). |
| sin | The sine of the rotation angle. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsRotate | Create an identity rotation. |

### Public Methods

| Method | Description |
| --- | --- |
| AngularVelocity | Calculate the angular velocity necessary to rotate the current rotation and the specified rotation over a give time. |
| GetMatrix | Calculate a rotation UnityEngine.Matrix4x4 using the specified transform plane. |
| GetRelativeAngle | Get the relative angle between this rotation and the specified rotation. The limits of this are +/- PhysicsMath.PI. |
| IntegrateRotation | Integrate the rotation using the specified angle change. |
| InverseMultiplyRotation | Inverse Multiply a rotation with this rotation. |
| InverseRotateVector | Inverse Rotate a vector. |
| LerpRotation | Calculate the normalized linear interpolation of this rotation and the specified rotation using the specified interval. |
| MultiplyRotation | Multiply a rotation with this rotation. |
| Normalized | Create a normalized rotation. |
| Rotate | Rotate the rotation by the specified angle. |
| RotateVector | Rotate a vector. |

### Static Methods

| Method | Description |
| --- | --- |
| UnwindAngle | Convert any angle into the range [-pi, pi]. |
