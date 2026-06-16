<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-normals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of vectors that defines the surface orientation at each vertex of the mesh.

Normal vectors are used for lighting calculations and are typically unit vectors. Each normal in the array corresponds to the vertex at the same index in the mesh's vertices array. The size of the normals and vertices arrays must be the same.

In some cases, such as after mesh deformation or when using non-uniform scaling on the Transform, normals can become non-unit length.

If the mesh does not contain any normals, this property returns an empty array.

Note that this property returns normals in the mesh's local space, not in world space.

```csharp
using UnityEngine;// Rotate the normals by speed every frame
public class ExampleClass : MonoBehaviour
{
    float speed = 100.0f;    // Update is called once per frame
    void Update()
    {
        // obtain the normals from the Mesh
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        Vector3[] normals = mesh.normals;        // edit the normals in an external array
        Quaternion rotation = Quaternion.AngleAxis(Time.deltaTime * speed, Vector3.up);
        for (int i = 0; i < normals.Length; i++)
            normals[i] = rotation * normals[i];        // assign the array of normals to the mesh
        mesh.normals = normals;
    }
}
```

**Note:** To make changes to the normals it is important to copy the normals from the Mesh. Once the normals have been copied and changed the normals can be reassigned back to the Mesh.

**Note:** normals are assigned to vertices, not triangles.
