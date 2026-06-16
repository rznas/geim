<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of 3D vectors and points.

This structure is used throughout Unity to pass 3D positions and directions around. It also contains functions for doing common vector operations.

Besides the functions listed below, other classes can be used to manipulate vectors and points as well. For example the Quaternion and the Matrix4x4 classes are useful for rotating or transforming vectors and points.

### Static Properties

| Property | Description |
| --- | --- |
| back | Shorthand for writing Vector3(0, 0, -1). |
| down | Shorthand for writing Vector3(0, -1, 0). |
| forward | Shorthand for writing Vector3(0, 0, 1). |
| left | Shorthand for writing Vector3(-1, 0, 0). |
| negativeInfinity | Shorthand for writing Vector3(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity). |
| one | Shorthand for writing Vector3(1, 1, 1). |
| positiveInfinity | Shorthand for writing Vector3(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity). |
| right | Shorthand for writing Vector3(1, 0, 0). |
| up | Shorthand for writing Vector3(0, 1, 0). |
| zero | Shorthand for writing Vector3(0, 0, 0). |

### Properties

| Property | Description |
| --- | --- |
| magnitude | Returns the length of this vector (Read Only). |
| normalized | The unit vector in the direction of the current vector. |
| sqrMagnitude | Returns the squared length of this vector (Read Only). |
| this[int] | Access the x, y, z components using [0], [1], [2] respectively. |
| x | X component of the vector. |
| y | Y component of the vector. |
| z | Z component of the vector. |

### Constructors

| Constructor | Description |
| --- | --- |
| Vector3 | Creates a new three-dimensional vector or point. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns true if the given vector is exactly equal to this vector. |
| Set | Set x, y and z components of an existing Vector3. |
| ToString | Returns a formatted string for this vector. |

### Static Methods

| Method | Description |
| --- | --- |
| Angle | Calculates the angle between two vectors. |
| ClampMagnitude | Returns a copy of vector with its magnitude clamped to maxLength. |
| Cross | Calculates the cross product of two three-dimensional vectors. |
| Distance | Calculates the distance between two three-dimensional points. |
| Dot | Calculates the dot product of two three-dimensional vectors defined in the same coordinate space. |
| Lerp | Interpolates linearly between two points. |
| LerpUnclamped | Interpolates linearly between two vectors, allowing extrapolation beyond the end points. |
| Max | Returns a vector that is made from the largest components of two vectors. |
| Min | Returns a vector that is made from the smallest components of two vectors. |
| MoveTowards | Moves vector incrementally towards a target point. |
| Normalize | Normalizes the magnitude of the current vector to 1 while maintaining the direction. |
| OrthoNormalize | Makes vectors normalized and orthogonal to each other. |
| Project | Projects a vector onto another vector. |
| ProjectOnPlane | Projects a vector onto a plane. |
| Reflect | Reflects a vector off the plane defined by a normal vector. |
| RotateTowards | Rotates a vector current towards target. |
| Scale | Multiplies two vectors component-wise. |
| SignedAngle | Calculates the signed angle between two vectors, using a third vector to determine the sign. |
| Slerp | Spherically interpolates between two three-dimensional vectors. |
| SlerpUnclamped | Spherically interpolates between two vectors. |
| SmoothDamp | Gradually changes a vector towards a desired goal over time. |

### Operators

| Operator | Description |
| --- | --- |
| operator - | Subtracts one vector from another. |
| operator != | Returns true if vectors are different. |
| operator * | Multiplies a vector by a number. |
| operator / | Divides a vector by a number. |
| operator + | Adds two three-dimensional vectors with component-wise addition. |
| operator == | Returns true if two vectors are approximately equal. |
