<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.HasVertexAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | Vertex data attribute to check for. |

### Returns

**bool** Returns true if the data attribute is present in the mesh.

### Description

Checks if a specific vertex data attribute exists on this Mesh.

Most of possible mesh vertex data attributes are optional, for example a mesh might contain only vertex positions, normals and one UV coordinate. HasVertexAttribute check for these attributes will return true in that case, and will return false for all other attributes.

Additional resources: VertexAttribute, GetVertexAttributeDimension, GetVertexAttributes.
