<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the attributes a vertex can store in a mesh.

Vertices in a mesh can store a variety of attributes, such as position, normal, tangent, texture coordinates, or colors. Most attributes are optional, and different meshes may have different sets of attributes. Use this enum together with the Mesh API to modify and reason about the attributes in a given mesh.

Additional resources: VertexAttributeDescriptor, Mesh.HasVertexAttribute, Mesh.GetVertexAttributes.

### Properties

| Property | Description |
| --- | --- |
| Position | The location of the vertex in space. |
| Normal | The direction perpendicular to the surface at the vertex position. |
| Tangent | The direction tangential to the surface at the vertex position. |
| Color | The color of the vertex, using the Color or Color32 format. |
| TexCoord0 | The primary UV coordinates of the vertex. |
| TexCoord1 | The second set of UV coordinates of the vertex. |
| TexCoord2 | The third set of UV coordinates of the vertex. |
| TexCoord3 | The fourth set of UV coordinates of the vertex. |
| TexCoord4 | The fifth set of UV coordinates of the vertex. |
| TexCoord5 | The sixth set of UV coordinates of the vertex. |
| TexCoord6 | The seventh set of UV coordinates of the vertex. |
| TexCoord7 | The eighth set of UV coordinates of the vertex. |
| BlendWeight | The values that describe how much influence bones have on a vertex in skinning calculations. |
| BlendIndices | The indices that map a vertex to specific bones in skinning calculations. |
