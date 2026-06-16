<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.AllocateWritableMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| meshCount | The amount of meshes that will be created. |

### Returns

**MeshDataArray** Returns a `MeshDataArray` containing writeable `MeshData` structs. See MeshDataArray and MeshData.

### Description

Allocates data structures for Mesh creation using C# Jobs.

Use Mesh.AllocateWritableMeshData to obtain a MeshDataArray of writeable `MeshData` structs. You can access the resulting `MeshDataArray` and `MeshData` structs from any thread. Creating a `MeshDataArray` has some overhead for memory tracking and safety reasons, so it is more efficient to make a single call to Mesh.AllocateWritableMeshData and request multiple `MeshData` structs in the same `MeshDataArray` than it is to make multiple calls to Mesh.AllocateWritableMeshData. If you use the override that takes a Mesh or Mesh Array as argument you will be returned a copy of an existing Mesh that can be used on a thread.

You can populate writeable `MeshData` structs with data to create new Meshes. Use Mesh.MeshData.SetVertexBufferParams to set the vertex buffer size and layout, and then write to the array returned by Mesh.MeshData.GetVertexData to set the vertices. Use Mesh.MeshData.SetIndexBufferParams to set the index buffer size and format, and then write to the array returned by Mesh.MeshData.GetIndexData to set the indices. Write to Mesh.MeshData.subMeshCount to set the number of sub meshes, and then use Mesh.MeshData.SetSubMesh to set sub mesh data.

When you have populated the writeable `MeshData` struct with your data, use Mesh.ApplyAndDisposeWritableMeshData to apply the data to Mesh objects and automatically dispose of the `MeshDataArray`.

```csharp
using UnityEngine;
using UnityEngine.Rendering;[RequireComponent(typeof(MeshFilter))]
public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Allocate mesh data for one mesh.
        var dataArray = Mesh.AllocateWritableMeshData(1);
        var data = dataArray[0];        // Tetrahedron vertices with positions and normals.
        // 4 faces with 3 unique vertices in each -- the faces
        // don't share the vertices since normals have to be
        // different for each face.
        data.SetVertexBufferParams(12,
            new VertexAttributeDescriptor(VertexAttribute.Position),
            new VertexAttributeDescriptor(VertexAttribute.Normal, stream:1));
        // Four tetrahedron vertex positions:
        var sqrt075 = Mathf.Sqrt(0.75f);
        var p0 = new Vector3(0,0,0);
        var p1 = new Vector3(1,0,0);
        var p2 = new Vector3(0.5f,0,sqrt075);
        var p3 = new Vector3(0.5f,sqrt075,sqrt075/3);
        // The first vertex buffer data stream is just positions;
        // fill them in.
        var pos = data.GetVertexData<Vector3>();
        pos[0] = p0; pos[1] = p1; pos[2] = p2;
        pos[3] = p0; pos[4] = p2; pos[5] = p3;
        pos[6] = p2; pos[7] = p1; pos[8] = p3;
        pos[9] = p0; pos[10] = p3; pos[11] = p1;
        // Note: normals will be calculated later in RecalculateNormals.        // Tetrahedron index buffer: 4 triangles, 3 indices per triangle.
        // All vertices are unique so the index buffer is just a
        // 0,1,2,...,11 sequence.
        data.SetIndexBufferParams(12, IndexFormat.UInt16);
        var ib = data.GetIndexData<ushort>();
        for (ushort i = 0; i < ib.Length; ++i)
            ib[i] = i;        // One sub-mesh with all the indices.
        data.subMeshCount = 1;
        data.SetSubMesh(0, new SubMeshDescriptor(0, ib.Length));        // Create the mesh and apply data to it:
        var mesh = new Mesh();
        mesh.name = "Tetrahedron";
        Mesh.ApplyAndDisposeWritableMeshData(dataArray, mesh);
        mesh.RecalculateNormals();
        mesh.RecalculateBounds();        GetComponent<MeshFilter>().mesh = mesh;
    }
}
```

Additional resources: ApplyAndDisposeWritableMeshData, MeshDataArray, MeshData.
