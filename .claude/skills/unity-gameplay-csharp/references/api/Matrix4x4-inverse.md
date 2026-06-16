<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4-inverse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The inverse of this matrix. (Read Only)

Inverted matrix is such that if multiplied by the original would result in identity matrix.

If as matrix transforms vectors in a particular way, then the inverse matrix can transform them back. For example, Transform's Transform.worldToLocalMatrix and Transform.localToWorldMatrix are inverses of each other.

For regular 3D transformation matrices, it can be faster to use Inverse3DAffine method.

You can not invert a matrix with a determinant of zero. If you attempt this, `inverse` returns Matrix4x4.zero instead.

```csharp
using UnityEngine;// Stretch a mesh at an arbitrary angle around the X axis
[RequireComponent(typeof(MeshFilter))]
public class ExampleScript : MonoBehaviour
{
    // Angle and amount of stretching
    public float rotAngle = 30;
    public float stretch = 3;
    MeshFilter mf;
    Vector3[] origVerts;
    Vector3[] newVerts;    void Start()
    {
        // Get the Mesh Filter component, save its original vertices
        // and make a new vertex array for processing.
        mf = GetComponent<MeshFilter>();
        origVerts = mf.mesh.vertices;
        newVerts = new Vector3[origVerts.Length];
    }    void Update()
    {
        // Create a rotation matrix from a Quaternion
        Quaternion rot = Quaternion.Euler(rotAngle, 0, 0);
        Matrix4x4 m = Matrix4x4.TRS(Vector3.zero, rot, Vector3.one);        // Get the inverse of the matrix: undo the rotation
        Matrix4x4 inv = m.inverse;        // For each vertex:
        for (var i = 0; i < origVerts.Length; i++)
        {
            // Rotate the vertex and scale it along its new Y axis
            Vector3 pt = m.MultiplyPoint3x4(origVerts[i]);
            pt.y *= stretch;            // Return the vertex to its original rotation (but with the
            // scaling still applied).
            newVerts[i] = inv.MultiplyPoint3x4(pt);
        }        // Assign the transformed vertices to the mesh
        mf.mesh.vertices = newVerts;
    }
}
```

Additional resources: Inverse3DAffine, determinant.
