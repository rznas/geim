<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.MultiplyPoint3x4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms a position by this matrix (fast).

Returns a position `v` transformed by the current transformation matrix. This function is a faster version of MultiplyPoint; but it can only handle regular 3D transformations. `MultiplyPoint` is slower, but can handle projective transformations as well.

Additional resources: MultiplyPoint, MultiplyVector.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Stretch a mesh at an arbitrary angle around the X axis.    // Angle and amount of stretching.
    float rotAngle;
    float stretch;
    MeshFilter mf;
    Vector3[] origVerts;
    Vector3[] newVerts;
    void Start()
    {
        // Get the Mesh Filter component, save its original vertices
        // and make a new vertex array for processing.
        mf = GetComponent< MeshFilter > ();
        origVerts = mf.mesh.vertices;
        newVerts = new Vector3[origVerts.Length];
    }
    void Update()
    {
        // Create a rotation matrix from a Quaternion.
        Quaternion rot = Quaternion.Euler(rotAngle, 0, 0);
        Matrix4x4 m = Matrix4x4.TRS(Vector3.zero, rot, Vector3.one);        // Get the inverse of the matrix (ie, to undo the rotation).
        Matrix4x4 inv = m.inverse;        // For each vertex...
        for (var i = 0; i < origVerts.Length; i++)
        {
            // Rotate the vertex and scale it along its new Y axis.
            var pt = m.MultiplyPoint3x4(origVerts[i]);
            pt.y *= stretch;            // Return the vertex to its original rotation (but with the
            // scaling still applied).
            newVerts[i] = inv.MultiplyPoint3x4(pt);
        }        // Copy the transformed vertices back to the mesh.
        mf.mesh.vertices = newVerts;
    }
}
```
