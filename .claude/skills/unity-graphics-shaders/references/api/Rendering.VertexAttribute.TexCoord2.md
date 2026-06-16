<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.TexCoord2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The third set of UV coordinates of the vertex.

This attribute is optional. The attribute is used for texture mapping, as it defines the UV coordinates used to apply textures to a mesh's surface. Unity can use the tertiary UVs to store input data for real-time lightmap UVs.

UV coordinates are commonly represented using the Vector2 format, which consists of two 32-bit floating-point values, resulting in 8 bytes per vertex. If vertex compression is applied to this attribute, each component is compressed to 16-bit floating-point values, reducing the total to 4 bytes per vertex.

This attribute corresponds to the `TEXCOORD2` semantic in the HLSL shading language.

You can access vertex UVs using methods such as Mesh.GetUVs and Mesh.SetUVs.

For more information, refer to mesh vertex data.
