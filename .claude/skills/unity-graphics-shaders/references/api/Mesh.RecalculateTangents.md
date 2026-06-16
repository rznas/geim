<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.RecalculateTangents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Recalculates the tangents of the Mesh from the normals and texture coordinates.

After modifying the vertices and the normals of the Mesh, tangents need to be updated if the Mesh is rendered using Shaders that reference normal maps. Unity calculates tangents using the vertex positions, normals and texture coordinates of the Mesh.

`RecalculateTangents` adds a tangent attribute to the vertex, or changes the tangent attribute to the correct format. The attribute has a dimension of 4 and uses the VertexAttributeFormat.Float32 format. `RecalculateTangents` adds the attribute even if the Mesh doesn't have any vertices.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        mesh.RecalculateTangents();
    }
}
```

`RecalculateTangents` converts Mesh vertex position, normal and UV0 data to VertexAttributeFormat.Float32 format, if the format is different.

If the Mesh does not have normals, texture coordinates or triangles, then the tangents are all set to a (1,0,0,1) vector.

Additional resources: RecalculateNormals.
