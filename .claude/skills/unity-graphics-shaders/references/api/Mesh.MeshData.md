<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A struct containing Mesh data for C# Job System access.

Use a `MeshData` struct to access, process and create Meshes in the C# Job System. There are two types of `MeshData` struct: read-only `MeshData` structs that allow read-only access to Mesh data from the C# Job System, and writeable `MeshData` structs that allow you to create Meshes from the C# Job System.

**Read-only MeshData**

When you pass one or more Meshes to Mesh.AcquireReadOnlyMeshData, Unity returns a MeshDataArray of read-only `MeshData` structs. You can access the resulting `MeshDataArray` and `MeshData` structs from any thread. Creating a `MeshDataArray` has some overhead for memory tracking and safety reasons, so it is more efficient to make a single call to Mesh.AcquireReadOnlyMeshData and request multiple `MeshData` structs in the same `MeshDataArray` than it is to make multiple calls to Mesh.AcquireReadOnlyMeshData.

Each `MeshData` struct contains a read-only snapshot of data for a given Mesh. You can use GetIndexData and GetVertexData to access the raw read-only Mesh data without any memory allocations, data copies or format conversions. You need to know the exact Mesh data layout to do this: for instance, the presence and formats of all the mesh vertex attributes. You can use GetColors, GetIndices, GetNormals, GetTangents, GetUVs, and GetVertices to copy the read-only Mesh data into pre-existing arrays. These methods also perform data format conversions if needed. For example, if the read-only `MeshData` struct uses VertexAttributeFormat.Float16 normals and you call GetNormals, the normals will be converted into Vector3 normals in the destination array.

You must dispose of the `MeshDataArray` once you have finished working with it. Calling Mesh.AcquireReadOnlyMeshData does not cause any memory allocations or data copies by default, as long as you dispose of the `MeshDataArray` before modifying the Mesh. However, if you call Mesh.AcquireReadOnlyMeshData and then modify the Mesh while the `MeshDataArray` exists, Unity must copy the `MeshDataArray` into a new memory allocation. In addition to this, if you call Mesh.AcquireReadOnlyMeshData and then modify the Mesh, your modifications are not reflected in the `MeshData` structs.

Use Dispose to dispose of the `MeshDataArray`, or use the C# `using` pattern to do this automatically:

```csharp
using Unity.Collections;
using UnityEngine;
public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var mesh = new Mesh();
        mesh.vertices = new[] {Vector3.one, Vector3.zero};
        using (var dataArray = Mesh.AcquireReadOnlyMeshData(mesh))
        {
            var data = dataArray[0];
            // prints "2"
            Debug.Log(data.vertexCount);
            var gotVertices = new NativeArray<Vector3>(mesh.vertexCount, Allocator.TempJob);
            data.GetVertices(gotVertices);
            // prints "(1.0, 1.0, 1.0)" and "(0.0, 0.0, 0.0)"
            foreach (var v in gotVertices)
                Debug.Log(v);
            gotVertices.Dispose();
        }
    }
}
```

**Writeable MeshData** 
 
Use Mesh.AllocateWritableMeshData to obtain a MeshDataArray of writeable `MeshData` structs. You can access the resulting `MeshDataArray` and `MeshData` structs from any thread. Creating a `MeshDataArray` has some overhead for memory tracking and safety reasons, so it is more efficient to make a single call to Mesh.AllocateWritableMeshData and request multiple `MeshData` structs in the same `MeshDataArray` than it is to make multiple calls to Mesh.AllocateWritableMeshData.

You can populate writeable `MeshData` structs with data to create new Meshes. Use Mesh.MeshData.SetVertexBufferParams to set the vertex buffer size and layout, and then write to the array returned by Mesh.MeshData.GetVertexData to set the vertices. Use Mesh.MeshData.SetIndexBufferParams to set the index buffer size and format, and then write to the array returned by Mesh.MeshData.GetIndexData to set the indices. Write to Mesh.MeshData.subMeshCount to set the number of sub meshes, and then use Mesh.MeshData.SetSubMesh to set sub mesh data.

When you have populated the writeable `MeshData` struct with your data, use Mesh.ApplyAndDisposeWritableMeshData to apply the data to Mesh objects and automatically dispose of the `MeshDataArray`.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using Unity.Collections;[RequireComponent(typeof(MeshFilter))]
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
            new VertexAttributeDescriptor(VertexAttribute.Normal, stream: 1));        // Four tetrahedron vertex positions:
        var sqrt075 = Mathf.Sqrt(0.75f);
        var p0 = new Vector3(0, 0, 0);
        var p1 = new Vector3(1, 0, 0);
        var p2 = new Vector3(0.5f, 0, sqrt075);
        var p3 = new Vector3(0.5f, sqrt075, sqrt075 / 3);        // The first vertex buffer data stream is just positions;
        // fill them in.
        NativeArray<Vector3> pos = data.GetVertexData<Vector3>();
        pos[0] = p0; pos[1] = p1; pos[2] = p2;
        pos[3] = p0; pos[4] = p2; pos[5] = p3;
        pos[6] = p2; pos[7] = p1; pos[8] = p3;
        pos[9] = p0; pos[10] = p3; pos[11] = p1;        // Note: normals will be calculated later in RecalculateNormals.
        // Tetrahedron index buffer: 4 triangles, 3 indices per triangle.
        // All vertices are unique so the index buffer is just a
        // 0,1,2,...,11 sequence.
        data.SetIndexBufferParams(12, IndexFormat.UInt16);
        NativeArray<ushort> indexBuffer = data.GetIndexData<ushort>();
        for (ushort i = 0; i < indexBuffer.Length; ++i)
            indexBuffer[i] = i;        // One sub-mesh with all the indices.
        data.subMeshCount = 1;
        data.SetSubMesh(0, new SubMeshDescriptor(0, indexBuffer.Length));
        
        // Create the mesh and apply data to it:
        var mesh = new Mesh();
        mesh.name = "Tetrahedron";
        Mesh.ApplyAndDisposeWritableMeshData(dataArray, mesh);
        mesh.RecalculateNormals();
        mesh.RecalculateBounds();
        GetComponent<MeshFilter>().mesh = mesh;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| indexFormat | Gets the format of the index buffer data in the MeshData. (Read Only) |
| lodCount | Number of levels of detail in this mesh. |
| lodSelectionCurve | A struct containing values for lodBias and lodSlope. Unity uses these values when calculating which Mesh LOD level to select. |
| subMeshCount | The number of sub-meshes in the MeshData. |
| vertexBufferCount | Gets the number of vertex buffers in the MeshData. (Read Only) |
| vertexCount | Gets the number of vertices in the MeshData. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| GetColors | Populates an array with the vertex colors from the MeshData. |
| GetIndexData | Gets raw data from the index buffer of the MeshData. |
| GetIndices | Populates an array with the indices for a given sub-mesh from the MeshData. |
| GetLod | Gets a Mesh LOD range (index start and index count) for a given Mesh LOD. |
| GetNormals | Populates an array with the vertex normals from the MeshData. |
| GetSubMesh | Gets data about a given sub-mesh in the MeshData. |
| GetTangents | Populates an array with the vertex tangents from the MeshData. |
| GetUVs | Populates an array with the UVs from the MeshData. |
| GetVertexAttributeDimension | Gets the dimension of a given vertex attribute in the MeshData. |
| GetVertexAttributeFormat | Gets the format of a given vertex attribute in the MeshData. |
| GetVertexAttributeOffset | Gets the offset within a vertex buffer stream of a given vertex data attribute on this MeshData. |
| GetVertexAttributeStream | Get the vertex buffer stream index of a specific vertex data attribute on this MeshData. |
| GetVertexBufferStride | Get the vertex buffer stream stride in bytes. |
| GetVertexData | Gets raw data for a given vertex buffer stream format in the MeshData. |
| GetVertices | Populates an array with the vertex positions from the MeshData. |
| HasVertexAttribute | Checks if a given vertex attribute exists in the MeshData. |
| SetIndexBufferParams | Sets the index buffer size and format of the Mesh that Unity creates from the MeshData. |
| SetLod | Set a Mesh LOD range for a given submesh and level of detail. |
| SetSubMesh | Sets the data for a sub-mesh of the Mesh that Unity creates from the MeshData. |
| SetVertexBufferParams | Sets the vertex buffer size and layout of the Mesh that Unity creates from the MeshData. |
