<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.Position.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The location of the vertex in space.

Meshes require this attribute for rendering.

Positions are commonly represented using the Vector3 format, which consists of three 32-bit floating-point values, resulting in 12 bytes per vertex. If vertex compression is applied to this attribute, each component is compressed to 16-bit floating point values, reducing the total to 6 bytes per vertex.

This attribute corresponds to the `POSITION` semantic in the HLSL shading language.

You can access vertex positions using methods such as Mesh.GetVertices and Mesh.SetVertices.

For more information, refer to mesh vertex data.
