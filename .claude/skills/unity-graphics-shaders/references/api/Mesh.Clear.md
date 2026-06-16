<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.Clear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keepVertexLayout | True if the existing Mesh data layout should be preserved. |

### Description

Clears all vertex data and all triangle indices.

You should call this function before rebuilding triangles array.

```csharp
// Convert any GameObject into a single triangleusing UnityEngine;public class meshClear : MonoBehaviour
{
    private bool once = false;    void Update()
    {
        if (Time.time > 2.0f)
        {
            convertMesh();
        }
    }    void convertMesh()
    {
        if (once)
            return;        Mesh mesh = GetComponent<MeshFilter>().mesh;        // Clears all the data that the mesh currently has
        mesh.Clear();        // create 3 vertices for the triangle
        mesh.vertices = new Vector3[] {new Vector3(0, 0, 0), new Vector3(0, 1, 0), new Vector3(1, 1, 0)};
        mesh.uv = new Vector2[] {new Vector2(0, 0), new Vector2(0, 1), new Vector2(1, 1)};
        mesh.triangles = new int[] {0, 1, 2};        once = true;
    }
}
```

Default behaviour of this function keeps the existing vertex layout: if the mesh had tangent vectors and vertex colors, for example, then the tangents and colors will be part of mesh data once you fill in new vertex data. If you want to completely clear the mesh and start with an empty vertex layout, pass false for `keepVertexLayout` parameter. Alternatively, assigning an empty array to any mesh component will also remove it from the vertex layout.
