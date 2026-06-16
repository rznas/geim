<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSettings-alphaTestReferenceValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns or assigns the alpha test reference value.

Returns the reference value (also known as the alpha cutoff) used to compute values needed to preserve alpha mipmap coverage on textures. A pixel is considered to be completely transparent when this value is greater than or equal to the pixel's alpha value. Always match the alpha cutoff value used in the alpha test to avoid unexpected results.
