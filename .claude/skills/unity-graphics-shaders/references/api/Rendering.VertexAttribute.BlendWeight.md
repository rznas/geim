<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttribute.BlendWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The values that describe how much influence bones have on a vertex in skinning calculations.

This attribute is optional. Up to four weights can be included in the vertex stream.

Blend weights are commonly represented using floats. 

This attribute corresponds to the `BLENDWEIGHTS` semantic in the HLSL shading language.

You can set blend weights for vertices using methods such as Mesh.SetBoneWeights.

For more information, refer to mesh vertex data.
