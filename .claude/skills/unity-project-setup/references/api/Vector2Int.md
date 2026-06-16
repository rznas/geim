<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2Int.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of 2D vectors and points using integers.

This structure is used in some places to represent 2D positions and vectors that don't require the precision of floating-point.

### Static Properties

| Property | Description |
| --- | --- |
| down | Shorthand for writing Vector2Int(0, -1). |
| left | Shorthand for writing Vector2Int(-1, 0). |
| one | Shorthand for writing Vector2Int(1, 1). |
| right | Shorthand for writing Vector2Int(1, 0). |
| up | Shorthand for writing Vector2Int(0, 1). |
| zero | Shorthand for writing Vector2Int(0, 0). |

### Properties

| Property | Description |
| --- | --- |
| magnitude | Returns the length of this vector (Read Only). |
| sqrMagnitude | Returns the squared length of this vector (Read Only). |
| this[int] | Access the x or y component using [0] or [1] respectively. |
| x | X component of the vector. |
| y | Y component of the vector. |

### Public Methods

| Method | Description |
| --- | --- |
| Clamp | Clamps the Vector2Int to the bounds given by min and max. |
| Equals | Returns true if the objects are equal. |
| GetHashCode | Gets the hash code for the Vector2Int. |
| Set | Set x and y components of an existing Vector2Int. |
| ToString | Returns a formatted string for this vector. |

### Static Methods

| Method | Description |
| --- | --- |
| CeilToInt | Converts a Vector2 to a Vector2Int by doing a Ceiling to each value. |
| Distance | Returns the distance between a and b. |
| FloorToInt | Converts a Vector2 to a Vector2Int by doing a Floor to each value. |
| Max | Returns a vector that is made from the largest components of two vectors. |
| Min | Returns a vector that is made from the smallest components of two vectors. |
| RoundToInt | Converts a Vector2 to a Vector2Int by doing a Round to each value. |
| Scale | Multiplies two vectors component-wise. |

### Operators

| Operator | Description |
| --- | --- |
| operator - | Subtracts one vector from another. |
| operator != | Returns true if vectors different. |
| operator * | Multiplies a vector by a number. |
| operator / | Divides a vector by a number. |
| operator + | Adds two vectors. |
| operator == | Returns true if the vectors are equal. |
| Vector2 | Converts a Vector2Int to a Vector2. |
| Vector3Int | Converts a Vector2Int to a Vector3Int. |
