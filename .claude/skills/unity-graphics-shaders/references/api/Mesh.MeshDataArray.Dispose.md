<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshDataArray.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this method to dispose of the `MeshDataArray` struct.

It is important to dispose of a `MeshDataArray` struct once you have finished working with it. Modifying a Mesh while a `MeshDataArray` struct for that Mesh exists results in memory allocations and data copies. Use Dispose to dispose of the `MeshDataArray` struct when you have finished using it, or use the C# `using` pattern to do this automatically:

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
            // prints "2"
            Debug.Log(dataArray[0].vertexCount);
        }
    }
}
```

Additional resources: Mesh.AcquireReadOnlyMeshData.
