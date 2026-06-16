<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of four-dimensional vectors.

This structure is used in some places to represent four component vectors (e.g. mesh tangents, parameters for shaders). In the majority of other cases a Vector3 is used.

### Static Properties

| Property | Description |
| --- | --- |
| negativeInfinity | Shorthand for writing Vector4(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity). |
| one | Shorthand for writing Vector4(1,1,1,1). |
| positiveInfinity | Shorthand for writing Vector4(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity). |
| zero | Shorthand for writing Vector4(0,0,0,0). |

### Properties

| Property | Description |
| --- | --- |
| magnitude | Returns the length of this vector (Read Only). |
| normalized | Returns a normalized vector based on the current vector. The normalized vector has a magnitude of 1 and is in the same direction as the current vector. Returns a zero vector If the current vector is too small to be normalized. |
| sqrMagnitude | Returns the squared length of this vector (Read Only). |
| this[int] | Access the x, y, z, w components using [0], [1], [2], [3] respectively. |
| w | W component of the vector. |
| x | X component of the vector. |
| y | Y component of the vector. |
| z | Z component of the vector. |

### Constructors

| Constructor | Description |
| --- | --- |
| Vector4 | Creates a new vector with given x, y, z, w components. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns true if the given vector is exactly equal to this vector. |
| Set | Set x, y, z and w components of an existing Vector4. |
| ToString | Returns a formatted string for this vector. |

### Static Methods

| Method | Description |
| --- | --- |
| Distance | Returns the distance between a and b. |
| Dot | Dot Product of two vectors. |
| Lerp | Linearly interpolates between two vectors. |
| LerpUnclamped | Linearly interpolates between two vectors. |
| Max | Returns a vector that is made from the largest components of two vectors. |
| Min | Returns a vector that is made from the smallest components of two vectors. |
| MoveTowards | Moves a point current towards target. |
| Normalize | Makes this vector have a magnitude of 1. |
| Project | Projects a vector onto another vector. |
| Scale | Multiplies two vectors component-wise. |

### Operators

| Operator | Description |
| --- | --- |
| operator - | Subtracts one vector from another. |
| operator * | Multiplies a vector by a number. |
| operator / | Divides a vector by a number. |
| operator + | Adds two vectors. |
| operator == | Returns true if two vectors are approximately equal. |
| Vector2 | Converts a Vector4 to a Vector2. |
| Vector3 | Converts a Vector4 to a Vector3. |
| Vector4 | Converts a Vector3 to a Vector4. |
| Vector4 | Converts a Vector2 to a Vector4. |
