<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetVertexAttributeDimension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | The vertex attribute to get the dimension of. |

### Returns

**int** Returns the dimension of the vertex attribute. Returns 0 if the vertex attribute is not present.

### Description

Gets the dimension of a given vertex attribute in the `MeshData`.

Most vertex attributes have a standard data layout. For example, a normal is a 3-component vector. Some vertex attributes (usually texture coordinates) have more than one possible data layout. For example, SetUVs accepts either 2 dimensional, 3 dimensional or 4 dimensional texture coordinates. You can use this function to query the layout of a given vertex attribute. Additional resources: HasVertexAttribute, GetVertexAttributeFormat.
