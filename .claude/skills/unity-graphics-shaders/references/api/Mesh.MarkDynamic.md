<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MarkDynamic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Hints that the Mesh geometry data will be updated frequently, optimizing GPU buffer strategies for potentially faster data updates.

Call this method once on a `Mesh` if you intend to modify its vertex or index data repeatedly and frequently.

Calling `MarkDynamic` sets an internal flag indicating that the mesh data is dynamic. This flag acts as a hint to the underlying graphics API (like Direct3D, Vulkan, Metal) to use a different strategy when creating the GPU buffers that store the mesh geometry. Instead of the default 'static' or 'immutable' buffers optimized for rendering meshes that don't change, Unity will request 'dynamic' buffers.

**Benefits of Dynamic Buffers:** Updating the contents of dynamic GPU buffers is often significantly faster than updating static ones. If you are frequently calling methods like `SetVertices`, `SetIndices`, `SetVertexBufferData`, `SetIndexBufferData`, or `UploadMeshData`, using dynamic buffers can reduce CPU time spent waiting for the GPU and improve overall performance.

**Potential Costs and When to Use:** There is a potential trade-off. Rendering performance (the GPU reading from buffers during drawing) *might* be slightly slower with dynamic buffers compared to static/immutable buffers, which are often placed in memory locations optimized for GPU reads. Therefore, you should only call `MarkDynamic` on meshes that are **actually updated frequently**. Marking a mesh that rarely or never changes as dynamic might slightly decrease rendering performance without providing any update benefit.

**When to Call:** It is most effective to call `MarkDynamic` **before** you upload vertex or index data to the Mesh for the first time, or before it is first rendered. Calling `MarkDynamic` also marks the mesh's data channels as dirty internally; this ensures that the next time the GPU buffers are created or updated (e.g., when data is assigned or `UploadMeshData` is called), they will use the dynamic strategy. If called after buffers already exist, the effect will apply the next time the buffers are recreated.

```csharp
using UnityEngine;// Attach this script to a GameObject with a MeshFilter and MeshRenderer.
[RequireComponent(typeof(MeshFilter), typeof(MeshRenderer))]
public class DynamicMeshExample : MonoBehaviour
{
    Mesh m_Mesh;
    Vector3[] m_BaseVertices;
    Vector3[] m_UpdatedVertices;    public float waveSpeed = 1.0f;
    public float waveHeight = 0.5f;    void Start()
    {
        m_Mesh = new Mesh();
        
        // Call this *before* setting data if possible, especially if updating frequently.
        m_Mesh.MarkDynamic();        // Setup a quad
        m_BaseVertices = new Vector3[] {
            new Vector3(-1, 0, -1),
            new Vector3(-1, 0,  1),
            new Vector3( 1, 0,  1),
            new Vector3( 1, 0, -1)
        };
        m_UpdatedVertices = new Vector3[m_BaseVertices.Length];
        System.Array.Copy(m_BaseVertices, m_UpdatedVertices, m_BaseVertices.Length);        int[] triangles = new int[] {
            0, 1, 2, // First triangle
            0, 2, 3  // Second triangle
        };        // Assign initial data
        m_Mesh.vertices = m_UpdatedVertices;
        m_Mesh.triangles = triangles;
        m_Mesh.RecalculateNormals();        MeshFilter meshFilter = GetComponent<MeshFilter>();
        meshFilter.mesh = m_Mesh;
    }    void Update()
    {
        // Simulate a wave affecting the vertices every frame.
        for (int i = 0; i < m_BaseVertices.Length; i++)
        {
            Vector3 baseVertex = m_BaseVertices[i];
            float timeFactor = Time.time * waveSpeed;
            float heightOffset = Mathf.Sin(timeFactor + baseVertex.x) * waveHeight;
            m_UpdatedVertices[i] = new Vector3(baseVertex.x, baseVertex.y + heightOffset, baseVertex.z);
        }        // Update the mesh vertices. Because we called MarkDynamic(),
        // this update should be more efficient than if the mesh used static buffers.
        m_Mesh.vertices = m_UpdatedVertices;
        m_Mesh.RecalculateBounds();
    }
    
    void OnDestroy()
    {
        if (m_Mesh != null) 
            Destroy(m_Mesh);
    }
}
```

Additional resources: vertices, normals, triangles, UploadMeshData.
