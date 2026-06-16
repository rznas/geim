<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.RecalculateNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Recalculates the normals of the Mesh from the triangles and vertices.

After modifying the vertices it is often useful to update the normals to reflect the change. Normals are calculated from all shared vertices.

Imported Meshes sometimes don't share all vertices. For example, a vertex at a UV seam is split into two vertices, so the RecalculateNormals function creates normals that are not smooth at the UV seam.

Note that RecalculateNormals does not generate tangents automatically, to do that use RecalculateTangents.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        mesh.RecalculateNormals();
    }
}
```

`RecalculateNormals` converts Mesh vertex position data to VertexAttributeFormat.Float32 format, if the format is different.

Additional resources: RecalculateTangents.
