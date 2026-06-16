<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshDataArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of Mesh data snapshots for C# Job System access.

Access to most Unity objects is not thread-safe, so in order to efficiently process or create meshes from the C# Job System, use the `MeshDataArray` and `MeshData` structs.

You can use Mesh.AcquireReadOnlyMeshData for read-only access to mesh data of multiple meshes, and Mesh.AllocateWritableMeshData together with Mesh.ApplyAndDisposeWritableMeshData for creating new meshes.

A single `MeshDataArray` struct represents snapshot of mesh data of multiple meshes. Use Length and index operator to access data of an individual Mesh. Memory allocation and C# Job System safety tracking is built into `MeshDataArray` struct, so that the tracking overhead is minimal when working with multiple meshes at the same time. It is thus much more efficient to use a single `MeshDataArray/` struct for multiple meshes, than to operate on several individual structs.

It is important to dispose of a `MeshDataArray` struct once you have finished working with it. Use Dispose to dispose of the struct when you have finished using it, or use the C# `using` pattern to do this automatically:

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

Additional resources: Mesh.AcquireReadOnlyMeshData, Mesh.AllocateWritableMeshData, Mesh.ApplyAndDisposeWritableMeshData, MeshData.

### Properties

| Property | Description |
| --- | --- |
| Length | Number of Mesh data elements in the MeshDataArray. |
| this[int] | Access MeshDataArray element by an index. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Use this method to dispose of the MeshDataArray struct. |
