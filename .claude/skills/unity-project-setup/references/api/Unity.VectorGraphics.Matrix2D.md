<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.Matrix2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A 2x3 transformation matrix used for 2D operations.

### Static Properties

| Property | Description |
| --- | --- |
| identity | Returns the identity matrix (read-only). |
| zero | Returns a matrix with all elements set to zero (read-only). |

### Properties

| Property | Description |
| --- | --- |
| m00 | The matrix member at (0,0) |
| m01 | The matrix member at (0,1) |
| m02 | The matrix member at (0,2) |
| m10 | The matrix member at (1,0) |
| m11 | The matrix member at (1,1) |
| m12 | The matrix member at (1,2) |
| this[int,int] | Access element at [row, column]. |

### Constructors

| Constructor | Description |
| --- | --- |
| Matrix2D | Initializes a Matrix2D with column vectors |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Checks if two matrices are equal. |
| GetColumn | Gets a column of the matrix. |
| GetHashCode | Gets a hashcode of the matrix. |
| GetRow | Gets a row of the matrix. |
| Inverse | Computes the inverse of the matrix. |
| MultiplyPoint | Transforms a position by this matrix (effectively by 2x3). |
| MultiplyVector | Transforms a direction by this matrix. |
| SetColumn | Sets a column of the matrix. |
| SetRow | Sets a row of the matrix. |
| ToString | Returns a string representation of the matrix. |

### Static Methods

| Method | Description |
| --- | --- |
| RotateLH | Creates a left-hand side rotation matrix. |
| RotateRH | Creates a right-hand side rotation matrix. |
| Scale | Creates a scaling matrix. |
| SkewX | Creates a skew matrix on X. |
| SkewY | Creates a skew matrix on U. |
| Translate | Creates a translation matrix. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Checks if two matrices are not equal. |
| operator * | Multiplies two matrices. |
| operator == | Checks if two matrices are equal. |
