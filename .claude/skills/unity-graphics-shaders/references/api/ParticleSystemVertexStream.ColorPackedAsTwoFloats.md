<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemVertexStream.ColorPackedAsTwoFloats.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The color of each particle, packed in a special format to allow decoding on GPUs that do not support bit-packing operations.

To unpack the color, use the following code: `float4 color = float4(floor(colorPacked.x) / 255, frac(colorPacked.x) / 0.999, floor(colorPacked.y) / 255, frac(colorPacked.y) / 0.999);`.
