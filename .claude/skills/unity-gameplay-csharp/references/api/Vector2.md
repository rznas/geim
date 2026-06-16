<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of 2D vectors and points.

This structure is used in some places to represent 2D positions and vectors (e.g. texture coordinates in a Mesh or texture offsets in Material). In the majority of other cases a Vector3 is used.

### Static Properties

| Property | Description |
| --- | --- |
| down | Shorthand for writing Vector2(0, -1). |
| left | Shorthand for writing Vector2(-1, 0). |
| negativeInfinity | Shorthand for writing Vector2(float.NegativeInfinity, float.NegativeInfinity). |
| one | Shorthand for writing Vector2(1, 1). |
| positiveInfinity | Shorthand for writing Vector2(float.PositiveInfinity, float.PositiveInfinity). |
| right | Shorthand for writing Vector2(1, 0). |
| up | Shorthand for writing Vector2(0, 1). |
| zero | Shorthand for writing Vector2(0, 0). |

### Properties

| Property | Description |
| --- | --- |
| magnitude | Returns the length of this vector (Read Only). |
| normalized | Returns a normalized vector based on the current vector. The normalized vector has a magnitude of 1 and is in the same direction as the current vector. Returns a zero vector If the current vector is too small to be normalized. |
| sqrMagnitude | Returns the squared length of this vector (Read Only). |
| this[int] | Access the x or y component using [0] or [1] respectively. |
| x | X component of the vector. |
| y | Y component of the vector. |

### Constructors

| Constructor | Description |
| --- | --- |
| Vector2 | Constructs a new vector with given x, y components. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns true if the given vector is exactly equal to this vector. |
| Set | Set x and y components of an existing Vector2. |
| ToString | Returns a formatted string for this vector. |

### Static Methods

| Method | Description |
| --- | --- |
| Angle | Gets the unsigned angle in degrees between from and to. |
| ClampMagnitude | Returns a copy of vector with its magnitude clamped to maxLength. |
| Distance | Returns the distance between a and b. |
| Dot | Dot Product of two vectors. |
| Lerp | Linearly interpolates between vectors a and b by t. |
| LerpUnclamped | Linearly interpolates between vectors a and b by t. |
| Max | Returns a vector that is made from the largest components of two vectors. |
| Min | Returns a vector that is made from the smallest components of two vectors. |
| MoveTowards | Moves a point current towards target. |
| Normalize | Makes this vector have a magnitude of 1. |
| Perpendicular | Returns the 2D vector perpendicular to this 2D vector. The result is always rotated 90-degrees in a counter-clockwise direction for a 2D coordinate system where the positive Y axis goes up. |
| Reflect | Reflects a vector off the surface defined by a normal. |
| Scale | Multiplies two vectors component-wise. |
| SignedAngle | Gets the signed angle in degrees between from and to. |
| SmoothDamp | Gradually changes a vector towards a desired goal over time. |

### Operators

| Operator | Description |
| --- | --- |
| operator - | Subtracts one vector from another. |
| operator * | Multiplies a vector by a number. |
| operator / | Divides a vector by a number. |
| operator + | Adds two vectors. |
| operator == | Returns true if two vectors are approximately equal. |
| Vector2 | Converts a Vector3 to a Vector2. |
| Vector3 | Converts a Vector2 to a Vector3. |
