<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A standard 4x4 transformation matrix.

A transformation matrix can perform arbitrary linear 3D transformations (i.e. translation, rotation, scale, shear etc.) and perspective transformations using homogenous coordinates. You rarely use matrices in scripts; most often using Vector3s, Quaternions and functionality of Transform class is more straightforward. Plain matrices are used in special cases like setting up nonstandard camera projection.

In Unity, several Transform, Camera, Material, Graphics and GL functions use Matrix4x4.

Matrices in Unity are column major; i.e. the position of a transformation matrix is in the last column, and the first three columns contain x, y, and z-axes. Data is accessed as: `row + (column*4)`. Matrices can be indexed like 2D arrays but note that in an expression like `mat[a, b]`, `a` refers to the row index, while `b` refers to the column index.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // get matrix from the Transform
        var matrix = transform.localToWorldMatrix;
        // get position from the last column
        var position = new Vector3(matrix[0,3], matrix[1,3], matrix[2,3]);
        Debug.Log("Transform position from matrix is: " + position);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| identity | Returns the identity matrix (Read Only). |
| zero | Returns a matrix with all elements set to zero (Read Only). |

### Properties

| Property | Description |
| --- | --- |
| decomposeProjection | This property takes a projection matrix and returns the six plane coordinates that define a projection frustum. |
| determinant | The determinant of the matrix. (Read Only) |
| inverse | The inverse of this matrix. (Read Only) |
| isIdentity | Checks whether this is an identity matrix. (Read Only) |
| lossyScale | Attempts to get a scale value from the matrix. (Read Only) |
| rotation | Attempts to get a rotation quaternion from this matrix. |
| this[int,int] | Access element at [row, column]. |
| transpose | Returns the transpose of this matrix (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| GetColumn | Get a column of the matrix. |
| GetPosition | Get position vector from the matrix. |
| GetRow | Returns a row of the matrix. |
| MultiplyPoint | Transforms a position by this matrix (generic). |
| MultiplyPoint3x4 | Transforms a position by this matrix (fast). |
| MultiplyVector | Transforms a direction by this matrix. |
| SetColumn | Sets a column of the matrix. |
| SetRow | Sets a row of the matrix. |
| SetTRS | Sets this matrix to a translation, rotation and scaling matrix. |
| ToString | Returns a formatted string for this matrix. |
| TransformPlane | Returns a plane that is transformed in space. |
| ValidTRS | Checks if this matrix is a valid transform matrix. |

### Static Methods

| Method | Description |
| --- | --- |
| Frustum | This function returns a projection matrix with viewing frustum that has a near plane defined by the coordinates that were passed in. |
| Inverse3DAffine | Computes the inverse of a 3D affine matrix. |
| LookAt | Create a "look at" matrix. |
| Ortho | Create an orthogonal projection matrix. |
| Perspective | Create a perspective projection matrix. |
| Rotate | Creates a rotation matrix. |
| Scale | Creates a scaling matrix. |
| Translate | Creates a translation matrix. |
| TRS | Creates a translation, rotation and scaling matrix. |

### Operators

| Operator | Description |
| --- | --- |
| operator * | Multiplies two matrices. |
