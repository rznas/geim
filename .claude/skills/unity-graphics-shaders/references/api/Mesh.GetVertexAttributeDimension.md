<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexAttributeDimension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | Vertex data attribute to check for. |

### Returns

**int** Dimensionality of the data attribute, or zero if it is not present.

### Description

Get dimension of a specific vertex data attribute on this Mesh.

Meshes usually use a known format for data layout, for example, a position is always a 3-component Vector, and a tangent is always a 4-component Vector. But, in some cases (usually regarding texture coordinates), the data layout can be of different dimensionality. For example, SetUVs accepts either a 2D, 3D or 4D texture coordinates. You can use this function to query this layout.

Additional resources: VertexAttribute, HasVertexAttribute, GetVertexAttributeFormat, GetVertexAttributes.
