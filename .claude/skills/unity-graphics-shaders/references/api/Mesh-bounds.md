<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-bounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The bounding volume of the mesh that contain all vertices of the mesh.

This is the axis-aligned bounding box of the mesh in its own space, so the bounds don't change if you change the Transform position, rotation or scale. The Renderer.bounds property is similar but returns the bounds in world space.

```csharp
// Generates planar UV coordinates independent of mesh size
// by scaling vertices by the bounding box sizeusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        Vector3[] vertices = mesh.vertices;
        Vector2[] uvs = new Vector2[vertices.Length];
        Bounds bounds = mesh.bounds;
        int i = 0;
        while (i < uvs.Length)
        {
            uvs[i] = new Vector2(vertices[i].x / bounds.size.x, vertices[i].z / bounds.size.x);
            i++;
        }
        mesh.uv = uvs;
    }
}
```
