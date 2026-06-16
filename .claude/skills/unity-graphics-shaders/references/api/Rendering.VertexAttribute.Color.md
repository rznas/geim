<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.Color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The color of the vertex, using the Color or Color32 format.

This attribute is optional. You can use it for shading, tinting, gradients, or other custom effects in your materials.

Colors are commonly represented using the Color32 format, which consists of four 8-bit unsigned integer values (red, green, blue, and alpha), resulting in 4 bytes per vertex. If more precision is needed, you can use the Color format, which represents each channel with a 32-bit floating-point value, resulting in 16 bytes per vertex.

This attribute corresponds to the `COLOR` semantic in the HLSL shading language.

You can access vertex colors using methods such as Mesh.GetColors and Mesh.SetColors.

For more information, refer to mesh vertex data.
