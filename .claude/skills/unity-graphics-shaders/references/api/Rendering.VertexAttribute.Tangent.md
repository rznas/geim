<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.Tangent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The direction tangential to the surface at the vertex position.

This attribute is optional but plays an important role, for example, in advanced lighting and texture mapping effects such as normal mapping.

Tangents are commonly represented using the Vector4 format, which consists of four 32-bit floating-point values, resulting in 16 bytes per vertex. If vertex compression is applied to this attribute, each component is compressed to 16-bit floating-point values, reducing the total to 8 bytes per vertex.

This attribute corresponds to the `TANGENT` semantic in the HLSL shading language.

You can access vertex tangents using methods such as Mesh.GetTangents and Mesh.SetTangents.

For more information, refer to mesh vertex data.
