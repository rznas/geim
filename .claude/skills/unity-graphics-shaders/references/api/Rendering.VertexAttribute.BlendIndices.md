<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.BlendIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The indices that map a vertex to specific bones in skinning calculations.

This attribute is optional. Up to four indices can be included in the vertex stream.

Blend weights are commonly represented using integers.

This attribute corresponds to the `BLENDINDICES` semantic in the HLSL shading language.

You can set blend indices for vertices using methods such as Mesh.SetBoneWeights.

For more information, refer to mesh vertex data.
