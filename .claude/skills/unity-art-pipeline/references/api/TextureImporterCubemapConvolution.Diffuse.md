<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterCubemapConvolution.Diffuse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Diffuse convolution (aka irradiance Cubemap).

Each pixel of this Cubemap texture is replaced with the cosine-weighted integral of the corresponding hemisphere of incident illumination. In simpler terms texture is nicely blurred.

Can be used to light diffuse object by sampling with its surface normal.

Additional resources: TextureImporterSettings.cubemapConvolution.
