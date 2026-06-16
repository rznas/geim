<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexAttributes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**VertexAttributeDescriptor[]** Array of vertex attribute information.

### Description

Get information about vertex attributes of a Mesh.

Many of mesh vertex data attributes are optional, for example a mesh might contain only vertex positions, normals and one UV coordinate. Each attribute might use a different data type for storage. Use this function to query information about all attributes that describe vertices of this Mesh.

The returned array contains as many elements as there are vertex attributes. For example, if a Mesh has position and normals set up, but no other attributes, then the returned array will have two elements (one describing position, the other describing normal).

Additional resources: VertexAttributeDescriptor, HasVertexAttribute, SetVertexBufferParams.

### Parameters

| Parameter | Description |
| --- | --- |
| attributes | Collection of vertex attributes to receive the results. |

### Returns

**int** The number of vertex attributes returned in the attributes container.

### Description

Get information about vertex attributes of a Mesh, without memory allocations.

Use these overloads of the `GetVertexAttributes` function to avoid having to allocate a new array each time the function is called. The `List` variant only allocates memory if the list does not have enough capacity to hold all the vertex attributes. The array variant never allocates memory; if the array is too small then only a part of all the vertex attributes is returned.

Alternative way to query vertex attributes that does not need any memory allocations at all, is to use vertexAttributeCount and GetVertexAttribute functions.
