<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The vertex attribute index (0 to vertexAttributeCount-1). |

### Returns

**VertexAttributeDescriptor** Information about the vertex attribute.

### Description

Returns information about a vertex attribute based on its index.

This function can be used together with vertexAttributeCount to query information about vertex attributes that are present in the mesh, without needing any managed allocations.

Additional resources: vertexAttributeCount, GetVertexAttributes, VertexAttributeDescriptor.
