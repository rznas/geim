<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a new, empty Mesh object that can be dynamically built or modified through script.

The Mesh constructor creates an empty mesh with no vertices, normals, UVs, or triangles. Once created, you can populate the mesh by assigning vertex data, triangle indices, and other properties. This allows the creation of procedural geometry and runtime modifications of mesh data.

**Note**: When you create a new Mesh, its submesh count and mesh lod count are both set to 1.

```csharp
using UnityEngine;// This example creates a single triangle mesh from script.
[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class MeshCreationExample : MonoBehaviour
{
    private Mesh m_Mesh;
    private Material m_Material;    void Start()
    {
        // Create an empty Mesh.
        m_Mesh = new Mesh();
        m_Mesh.name = "Procedural Triangle";        // Populate the Mesh with vertices and triangles.
        m_Mesh.vertices = new Vector3[]
        {
            new Vector3(-1, -1, 0),
            new Vector3(1, -1, 0),
            new Vector3(0, 1, 0)
        };        m_Mesh.triangles = new int[]
        {
            2, 1, 0
        };        // Recalculate the normals to ensure proper lighting on the mesh.
        m_Mesh.RecalculateNormals();        // Assign the new Mesh to the MeshFilter component.
        MeshFilter meshFilter = GetComponent<MeshFilter>();
        meshFilter.sharedMesh = m_Mesh;
        
        // Assign a default material to the MeshRenderer component if null.
        MeshRenderer meshRenderer = GetComponent<MeshRenderer>();
        if (meshRenderer.sharedMaterial == null)
        {
            m_Material = new Material(Shader.Find("Unlit/Color"));
            meshRenderer.sharedMaterial = m_Material;
        }
    }
    
    void OnDestroy()
    {
        // Destroy the mesh to prevent memory leaks.
        if (m_Mesh != null)
            Destroy(m_Mesh);        if (m_Material != null)
            Destroy(m_Material);
    }
}
```
