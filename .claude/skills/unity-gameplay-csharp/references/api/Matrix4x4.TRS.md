<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Matrix4x4.TRS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a translation, rotation and scaling matrix.

The returned matrix is such that it places objects at position `pos`, oriented in rotation `q` and scaled by `s`.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Translate, rotate and scale a mesh. Try altering
    // the parameters in the inspector while running
    // to see the effect they have.    public Vector3 translation;
    public Vector3 eulerAngles;
    public Vector3 scale = new Vector3(1, 1, 1);
    MeshFilter mf;
    Vector3[] origVerts;
    Vector3[] newVerts;
    void Start()
    {
        // Get the Mesh Filter component, save its original vertices
        // and make a new vertex array for processing.
        mf = GetComponent<MeshFilter> ();
        origVerts = mf.mesh.vertices;
        newVerts = new Vector3[origVerts.Length];
    }
    void Update()
    {
        // Set a Quaternion from the specified Euler angles.
        Quaternion rotation = Quaternion.Euler(eulerAngles.x, eulerAngles.y, eulerAngles.z);        // Set the translation, rotation and scale parameters.
        Matrix4x4 m = Matrix4x4.TRS(translation, rotation, scale);        // For each vertex...
        for (int i = 0; i < origVerts.Length; i++)
        {
            // Apply the matrix to the vertex.
            newVerts[i] = m.MultiplyPoint3x4(origVerts[i]);
        }        // Copy the transformed vertices back to the mesh.
        mf.mesh.vertices = newVerts;
    }
}
```

Additional resources: TRS, Rotate, Scale, Translate, SetTRS functions.
