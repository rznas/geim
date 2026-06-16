<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.AcquireReadOnlyMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The input mesh. |
| meshes | The input meshes. |

### Returns

**MeshDataArray** Returns a `MeshDataArray` containing read-only `MeshData` structs. See MeshDataArray and MeshData.

### Description

Gets a snapshot of Mesh data for read-only access.

When you pass one or more Meshes to Mesh.AcquireReadOnlyMeshData, Unity returns a MeshDataArray of read-only `MeshData` structs. You can access the resulting `MeshDataArray` and `MeshData` structs from any thread. Creating a `MeshDataArray` has some overhead for memory tracking and safety reasons, so it is more efficient to make a single call to Mesh.AcquireReadOnlyMeshData and request multiple `MeshData` structs in the same `MeshDataArray` than it is to make multiple calls to Mesh.AcquireReadOnlyMeshData.

Each `MeshData` struct contains a read-only snapshot of data for a given Mesh.

You must dispose of the `MeshDataArray` once you have finished working with it. Calling Mesh.AcquireReadOnlyMeshData does not cause any memory allocations or data copies by default, as long as you dispose of the `MeshDataArray` before modifying the Mesh. However, if you call Mesh.AcquireReadOnlyMeshData and then modify the Mesh while the `MeshDataArray` exists, Unity must copy the `MeshDataArray` into a new memory allocation. In addition to this, if you call Mesh.AcquireReadOnlyMeshData and then modify the Mesh, your modifications are not reflected in the `MeshData` structs.

This method will throw an `InvalidOperationException` if isReadable is `false` for one or more input meshes. When working in the Unity Editor, use MeshUtility.AcquireReadOnlyMeshData to skip this check.

Use Dispose to dispose of the `MeshDataArray`, or use the C# `using` pattern to do this automatically:

```csharp
using Unity.Collections;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = new Mesh();
        mesh.vertices = new[] {Vector3.one, Vector3.zero};
        using (Mesh.MeshDataArray dataArray = Mesh.AcquireReadOnlyMeshData(mesh))
        {
            Mesh.MeshData data = dataArray[0];
            // prints "2"
            Debug.Log(data.vertexCount);
            NativeArray<Vector3> gotVertices = new NativeArray<Vector3>(mesh.vertexCount, Allocator.TempJob);
            data.GetVertices(gotVertices);
            // prints "(1.0, 1.0, 1.0)" and "(0.0, 0.0, 0.0)"
            foreach (Vector3 v in gotVertices)
                Debug.Log(v);
            gotVertices.Dispose();
        }
    }
}
```

Additional resources: MeshDataArray, MeshData, AllocateWritableMeshData, ApplyAndDisposeWritableMeshData.
