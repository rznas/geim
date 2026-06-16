<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.HasVertexAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | The vertex attribute to check for. |

### Returns

**bool** Returns true if the data attribute is present in the Mesh. Returns false if it is not.

### Description

Checks if a given vertex attribute exists in the `MeshData`.

Most Mesh vertex attributes are optional. For example, a Mesh might contain only vertex positions, normals, and one UV coordinate. Use this method to check whether a given vertex attribute is present in a Mesh. Additional resources: Mesh.HasVertexAttribute, GetVertexAttributeDimension, GetVertexAttributeFormat, Mesh.AcquireReadOnlyMeshData.
