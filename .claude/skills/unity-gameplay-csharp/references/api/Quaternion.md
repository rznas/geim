<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Quaternions are used to represent rotations.

A quaternion is a four-tuple of real numbers {x,y,z,w}. A quaternion is a mathematically convenient alternative to the euler angle representation. You can interpolate a quaternion without experiencing gimbal lock. You can also use a quaternion to concatenate a series of rotations into a single representation.

Unity internally uses Quaternions to represent all rotations.

In most cases, you can use existing rotations from methods such as Transform.localRotation or Transform.rotation to construct new rotations. For example, use existing rotations to smoothly interpolate between two rotations. The most used Quaternion functions are as follows: Quaternion.LookRotation, Quaternion.Angle, Quaternion.Euler, Quaternion.Slerp, Quaternion.FromToRotation, and Quaternion.identity.

You can use the Quaternion.operator * to rotate one rotation by another, or to rotate a vector by a rotation.

Note that Unity expects Quaternions to be normalized.

### Static Properties

| Property | Description |
| --- | --- |
| identity | The identity rotation (Read Only). |

### Properties

| Property | Description |
| --- | --- |
| eulerAngles | Returns or sets the euler angle representation of the rotation in degrees. |
| normalized | Returns this quaternion with a magnitude of 1 (Read Only). |
| this[int] | Access the x, y, z, w components using [0], [1], [2], [3] respectively. |
| w | W component of the Quaternion. Do not directly modify quaternions. |
| x | X component of the Quaternion. Don't modify this directly unless you know quaternions inside out. |
| y | Y component of the Quaternion. Don't modify this directly unless you know quaternions inside out. |
| z | Z component of the Quaternion. Don't modify this directly unless you know quaternions inside out. |

### Constructors

| Constructor | Description |
| --- | --- |
| Quaternion | Constructs new Quaternion with given x,y,z,w components. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Performs exact binary comparison of each Quaternion component (x, y, z, w). |
| Set | Set x, y, z and w components of an existing Quaternion. |
| SetFromToRotation | Creates a rotation which rotates from fromDirection to toDirection. |
| SetLookRotation | Creates a rotation with the specified forward and upwards directions. |
| ToAngleAxis | Converts a rotation to angle-axis representation. |
| ToString | Returns a formatted string for this quaternion. |

### Static Methods

| Method | Description |
| --- | --- |
| Angle | Returns the angle in degrees between two rotations a and b. The resulting angle ranges from 0 to 180. |
| AngleAxis | Creates a rotation which rotates angle degrees around axis. |
| Dot | The dot product between two rotations. |
| Euler | Converts an input Euler angle rotation specified as three floats to a Quaternion. |
| FromToRotation | Creates a rotation from fromDirection to toDirection. |
| Inverse | Returns the Inverse of rotation. |
| Lerp | Interpolates between a and b by t and normalizes the result afterwards. |
| LerpUnclamped | Interpolates between a and b by t and normalizes the result afterwards. The parameter t is not clamped. |
| LookRotation | Creates a rotation with the specified forward and upwards directions. |
| Normalize | Converts this quaternion to a quaternion with the same orientation but with a magnitude of 1.0. |
| RotateTowards | Rotates a rotation from towards to. |
| Slerp | Spherically linear interpolates between unit quaternions a and b by a ratio of t. |
| SlerpUnclamped | Spherically linear interpolates between unit quaternions a and b by t. |

### Operators

| Operator | Description |
| --- | --- |
| operator * | Combines rotations lhs and rhs. |
| operator == | Are two quaternions equal to each other? |
