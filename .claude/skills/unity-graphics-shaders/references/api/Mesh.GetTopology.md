<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetTopology.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | The index of the submesh whose topology you want to retrieve. Submesh indices are zero-based, and the maximum index is Mesh.subMeshCount - 1. |

### Returns

**MeshTopology** Returns the topology type of the specified submesh, as defined in the MeshTopology enum. This value indicates how the submesh's vertices are connected.

### Description

Retrieves the topology type of the specified submesh in the Mesh.

The topology specifies the geometric arrangement of vertices in a submesh and is determined when you assign data using the Mesh.SetIndices method. Common topology types include MeshTopology.Triangles, MeshTopology.Lines, and MeshTopology.Points, as defined in the MeshTopology enum.

This method allows you to inspect the topology of a submesh at runtime, which can be helpful for debugging or procedural mesh generation. Ensure that the submesh index is within the valid range (0 ≤ submesh < Mesh.subMeshCount) to avoid errors.

If no data has been assigned to the submesh, the default topology is MeshTopology.Triangles.

```csharp
using UnityEngine;// Example that checks the topology of a submesh
public class MeshTopologyExample : MonoBehaviour
{
    void Start()
    {
        // Get the MeshFilter attached to this GameObject
        Mesh mesh = GetComponent<MeshFilter>().sharedMesh;        // Iterate through submeshes and print their topology
        for (int submesh = 0; submesh < mesh.subMeshCount; submesh++)
        {
            MeshTopology topology = mesh.GetTopology(submesh);
            Debug.Log($"Submesh {submesh}: Topology = {topology}");
        }
    }
}
```

Additional resources: MeshTopology enum, SetIndices function.
