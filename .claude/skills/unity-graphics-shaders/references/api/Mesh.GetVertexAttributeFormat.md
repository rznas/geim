<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexAttributeFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | Vertex data attribute to check for. |

### Returns

**VertexAttributeFormat** Format of the data attribute.

### Description

Get format of a specific vertex data attribute on this Mesh.

Meshes usually use a known format for data layout, for example, a normal is a Vector3 by default. But meshes can use different vertex data formats, for example colors32 and colors set up vertex color in different formats. You can use this function to query this format.

Additional resources: VertexAttribute, HasVertexAttribute, GetVertexAttributeDimension, GetVertexAttributes.
