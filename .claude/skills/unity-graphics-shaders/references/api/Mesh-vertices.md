<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-vertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a copy of the vertex positions or assigns a new vertex positions array.

The number of vertices in the Mesh is changed by assigning a vertex array with a different number of vertices.

If you resize the vertex array then all other vertex attributes (normals, colors, tangents, UVs) are automatically resized too. RecalculateBounds is automatically invoked if no vertices have been assigned to the Mesh when setting the vertices.

Note that this method returns the vertices in local space, not in world space.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Mesh mesh;
    Vector3[] vertices;
    void Start()
    {
        mesh = GetComponent<MeshFilter>().mesh;
        vertices = mesh.vertices;
    }    void Update()
    {
        for (var i = 0; i < vertices.Length; i++)
        {
            vertices[i] += Vector3.up * Time.deltaTime;
        }        // assign the local vertices array into the vertices array of the Mesh.
        mesh.vertices = vertices;
        mesh.RecalculateBounds();
    }
}
```

**Note:** To make changes to the vertices it is important to copy the vertices from the Mesh. Once the vertices have been copied and changed the vertices can be reassigned back to the Mesh.
