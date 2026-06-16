<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-subMeshCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of sub-meshes inside the Mesh object.

Each sub-mesh corresponds to a Material in a Renderer, such as MeshRenderer or SkinnedMeshRenderer. A sub-mesh consists of a list of triangles, which refer to a set of vertices. Vertices can be shared between multiple sub-meshes.

Additional resources: GetTriangles, SetTriangles.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        Debug.Log("Submeshes: " + mesh.subMeshCount);
    }
}
```

For advanced lower-level sub-mesh and mesh data manipulation functions, see SubMeshDescriptor, SetSubMesh, SetIndexBufferParams, SetIndexBufferData.

Note that changing `subMeshCount` to a smaller value than it was previously resizes the Mesh index buffer to be smaller. The new index buffer size is set to SubMeshDescriptor.indexStart of the first removed sub-mesh.
