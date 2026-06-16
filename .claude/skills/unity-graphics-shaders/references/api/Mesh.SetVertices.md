<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inVertices | The vertex positions to copy, which replaces existing Mesh vertices and sets the new vertex count. |

### Description

Assigns a new vertex positions array.

Use this method to assign a complete set of vertex positions to the Mesh. This is a fundamental operation for defining or modifying the shape of a mesh procedurally.

**Data Handling:** When you provide a container, Unity copies the position data from your container into the Mesh internal storage.

- You can safely modify your original container after calling SetVertices without affecting the Mesh data.
- You can reuse the same source container to set data for multiple different Mesh objects.
- The Mesh does not keep a reference to your original container (especially relevant for managed arrays and lists).

**Vertex Count:** Calling this method overwrites all existing vertex positions. The Mesh vertex count (see vertexCount) will be adjusted to match the number of elements in the `inVertices` container you provide. If you subsequently set other per-vertex data (like normals or UVs), ensure their count matches the new vertex count.

This method is often used as the underlying implementation for the vertices property setter. For frequent updates, consider calling MarkDynamic first, which may improve performance by optimizing the underlying GPU buffer strategy.

```csharp
using UnityEngine;
using Unity.Collections;// This script demonstrates how to create a simple quad mesh from scratch.
// Attach this script to an empty GameObject. It will create a Mesh and
// assign it to the MeshFilter, and add a default material to the MeshRenderer.
[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class SetVerticesFullExample : MonoBehaviour
{
    private Material m_Material;
    private Mesh m_Mesh;    void Start()
    {
        // Create a new mesh object.
        m_Mesh = new Mesh();
        m_Mesh.name = "Procedural Quad";        // Define the vertex and triangle data.
        var vertices = new NativeArray<Vector3>(4, Allocator.Temp);
        vertices[0] = new Vector3(-1, 0, -1);
        vertices[1] = new Vector3(-1, 0,  1);
        vertices[2] = new Vector3( 1, 0,  1);
        vertices[3] = new Vector3( 1, 0, -1);
        
        var triangles = new NativeArray<int>(6, Allocator.Temp);
        triangles[0] = 0; triangles[1] = 1; triangles[2] = 2; // First triangle
        triangles[3] = 0; triangles[4] = 2; triangles[5] = 3; // Second triangle        // Populate the mesh with the data.
        m_Mesh.SetVertices(vertices);
        m_Mesh.SetIndices(triangles, MeshTopology.Triangles, 0);
        
        // Dispose of the NativeArrays now that the data is in the mesh.
        vertices.Dispose();
        triangles.Dispose();        // Finalize the mesh state for rendering.
        m_Mesh.RecalculateNormals();
        m_Mesh.RecalculateBounds();        // Get the required components and assign the fully constructed mesh and a material.
        var meshFilter = GetComponent<MeshFilter>();
        meshFilter.sharedMesh = m_Mesh;        var renderer = GetComponent<MeshRenderer>();
        if (renderer.sharedMaterial == null)
        {
            m_Material  = new Material(Shader.Find("Unlit/Color")); 
            renderer.sharedMaterial = m_Material;
        }
    }    void OnDestroy()
    {
        // Destroy the mesh when the component is destroyed to prevent memory leaks.
        if (m_Mesh != null)
            Destroy(m_Mesh);
        if (m_Material != null)
            Destroy(m_Material);
    }
}
```

Additional resources: Mesh.vertices, Mesh.vertexCount, Mesh.SetIndices, Mesh.SetNormals, Mesh.SetUVs, Mesh.MarkDynamic, Mesh.RecalculateNormals.

### Parameters

| Parameter | Description |
| --- | --- |
| inVertices | The vertex positions to copy, which replaces existing Mesh vertices and sets the new vertex count. |
| start | The zero-based index within `inVertices` where the slice of data to be copied begins. |
| length | The number of vertex positions to copy from `inVertices`, starting from the `start` index, which also becomes the new vertex count of the Mesh. |
| flags | Optional flags to control behavior after setting the vertices, such as skipping automatic bounds recalculation (default is MeshUpdateFlags.Default). |

### Description

Sets the vertex positions for the entire Mesh using data copied from a specific slice of a source container.

Use this method to assign a complete set of vertex positions to the Mesh, sourcing the data from a portion of a larger array, list, or `NativeArray`.

**Data Handling and Slicing:** This method behaves similarly to the full container overload, but only uses elements from the `inVertices` container starting at the `start` index and taking @@length@ number of elements. Unity copies this slice of position data into the Mesh internal storage.

- As with the full overload, you can safely modify the original source container after calling this method without affecting the `Mesh` data.
- The Mesh does not keep a reference to your original container.
- Ensure that `start` and `length` define a valid range within the bounds of the `inVertices` container.

**Mesh Update Flags:** The `flags` parameter allows you to control post-update operations. For example, using MeshUpdateFlags.DontRecalculateBounds can prevent the automatic (and potentially costly) recalculation of the mesh bounds if you intend to set them manually later or know they haven't changed significantly. See MeshUpdateFlags for details.

For frequent updates using slices, consider calling MarkDynamic first to potentially improve performance.

```csharp
using UnityEngine;
using Unity.Collections;
using UnityEngine.Rendering;// This script demonstrates how to set mesh vertices using a slice of a larger data array.
// It creates two quads' worth of vertex data but only displays one at a time.
// Use the "Start Index Group" slider in the Inspector to switch between them.
[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class SetVerticesPartialExample : MonoBehaviour
{
    [Range(0,1)]
    public int startIndexGroup = 0;    private Mesh m_Mesh;
    private NativeArray<Vector3> m_AllVertices;
    private int m_PreviousIndexGroup = -1;    void Start()
    {
        m_Mesh = new Mesh();
        m_Mesh.name = "Partial Vertices Mesh";        // Create a persistent NativeArray containing data for multiple potential quads.
        m_AllVertices = new NativeArray<Vector3>(8, Allocator.Persistent);        // Quad 1 vertices (group 0)
        m_AllVertices[0] = new Vector3(-1, 0, -1);
        m_AllVertices[1] = new Vector3(-1, 0,  1);
        m_AllVertices[2] = new Vector3( 1, 0,  1);
        m_AllVertices[3] = new Vector3( 1, 0, -1);        // Quad 2 vertices (group 1), offset on X axis
        m_AllVertices[4] = new Vector3( 2, 0, -1);
        m_AllVertices[5] = new Vector3( 2, 0,  1);
        m_AllVertices[6] = new Vector3( 4, 0,  1);
        m_AllVertices[7] = new Vector3( 4, 0, -1);        var renderer = GetComponent<MeshRenderer>();
        renderer.material = new Material(Shader.Find("Unlit/Color"));        var meshFilter = GetComponent<MeshFilter>();
        meshFilter.mesh = m_Mesh;
    }    void Update()
    {
        if (m_PreviousIndexGroup == startIndexGroup)
            return;        m_PreviousIndexGroup = startIndexGroup;        // Set the mesh vertices using a slice of the full data array.
        int dataLength = 4;
        int startIndex = startIndexGroup * dataLength;        // Copy the slice from m_AllVertices into the Mesh.
        m_Mesh.SetVertices(m_AllVertices, startIndex, dataLength, MeshUpdateFlags.DontRecalculateBounds);        // Define the triangles for a single quad using a NativeArray.
        var triangles = new NativeArray<int>(6, Allocator.Temp);
        triangles[0] = 0; triangles[1] = 1; triangles[2] = 2;
        triangles[3] = 0; triangles[4] = 2; triangles[5] = 3;
        m_Mesh.SetIndices(triangles, MeshTopology.Triangles, 0);
        triangles.Dispose();        // Recalculate bounds and normals manually.
        m_Mesh.RecalculateBounds();
        m_Mesh.RecalculateNormals();        Debug.Log($"Mesh updated to show vertex group {startIndexGroup}.");
    }    void OnDestroy()
    {
        // Dispose the persistent NativeArray and destroy the mesh to prevent memory leaks.
        if (m_AllVertices.IsCreated)
            m_AllVertices.Dispose();        if (m_Mesh != null)
            Destroy(m_Mesh);
    }
}
```

Additional resources: Mesh.vertices, Mesh.vertexCount, Mesh.SetIndices, Mesh.SetNormals, Mesh.SetUVs, Mesh.MarkDynamic, MeshUpdateFlags, Mesh.UploadMeshData.
