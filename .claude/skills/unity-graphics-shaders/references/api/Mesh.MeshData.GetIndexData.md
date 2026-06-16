<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetIndexData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<T>** Returns a `NativeArray` containing the index buffer data.

### Description

Gets raw data from the index buffer of the `MeshData`.

`GetIndexData` returns a direct "pointer" into the raw index buffer data without any memory allocations, data copies or conversions. You do not need to dispose of the returned `NativeArray`, because it does not represent a new memory allocation.

You need to know the exact Mesh data layout work with this data, including the presence and formats of all vertex attributes. The data layout matches the one from Mesh.SetIndexBufferData. Typically, Meshes with a 16 bit index format use the `ushort` data type, and Meshes with a 32 bit index format use the `int` data type.

If the `MeshData` is writeable, and you have set the index buffer size and format using Mesh.MeshData.SetIndexBufferParams, you can write indices directly to the array. If the `MeshData` is read-only, the array is read-only.

Additional resources: Mesh.AllocateWritableMeshData, Mesh.AcquireReadOnlyMeshData, Mesh.MeshData.SetIndexBufferParams.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var mesh = new Mesh();
        mesh.vertices = new[] {Vector3.one, Vector3.zero, Vector3.up};
        mesh.indexFormat = IndexFormat.UInt16;
        mesh.triangles = new[] {2, 0, 1};
        using (var data = Mesh.AcquireReadOnlyMeshData(mesh))
        {
            var indices = data[0].GetIndexData<ushort>();
            // prints 2, 0, 1
            foreach (var i in indices)
                Debug.Log(i);
        }
    }
}
```

Additional resources: Mesh.SetIndexBufferParams, Mesh.SetIndexBufferData, GetVertexData, Mesh.AcquireReadOnlyMeshData.
