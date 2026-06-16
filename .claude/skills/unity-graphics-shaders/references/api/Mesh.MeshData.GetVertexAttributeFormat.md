<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetVertexAttributeFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | The vertex attribute to check the format of. |

### Returns

**VertexAttributeFormat** Returns the format of the given vertex attribute.

### Description

Gets the format of a given vertex attribute in the `MeshData`.

Most vertex attributes have a standard data format. For example, a position is a Vector3. Some vertex attributes have more than one possible data format. For example, Mesh.colors32 and Mesh.colors are different formats for vertex colors. Use this function to query the format of a given vertex attribute. Additional resources: Mesh.GetVertexAttributeFormat, HasVertexAttribute, GetVertexAttributeDimension.
