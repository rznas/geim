<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-triangles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing all triangles in the Mesh.

The array is a list of triangles that contains indices into the vertex array. The size of the triangle array must always be a multiple of 3. Vertices can be shared by simply indexing into the same vertex. If the Mesh contains multiple sub-meshes (Materials), the triangle list will contain all the triangles belonging to all its sub-meshes. When you assign a triangle array using this function, the subMeshCount is set to 1. If you want to have multiple sub-meshes, use subMeshCount and SetTriangles.

It is recommended to assign a triangle array after assigning the vertex array, in order to avoid out of bounds errors.

```csharp
// Builds a Mesh containing a single triangle with uvs.
// Create arrays of vertices, uvs and triangles, and copy them into the mesh.using UnityEngine;public class meshTriangles : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        gameObject.AddComponent<MeshFilter>();
        gameObject.AddComponent<MeshRenderer>();
        Mesh mesh = GetComponent<MeshFilter>().mesh;        mesh.Clear();        // make changes to the Mesh by creating arrays which contain the new values
        mesh.vertices = new Vector3[] {new Vector3(0, 0, 0), new Vector3(0, 1, 0), new Vector3(1, 1, 0)};
        mesh.uv = new Vector2[] {new Vector2(0, 0), new Vector2(0, 1), new Vector2(1, 1)};
        mesh.triangles =  new int[] {0, 1, 2};
    }
}
```

Additional resources: SetTriangles, SetIndices.
