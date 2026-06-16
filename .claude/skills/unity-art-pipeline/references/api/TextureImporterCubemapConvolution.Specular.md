<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterCubemapConvolution.Specular.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specular convolution (aka Prefiltered Environment Map).

Each pixel of this Cubemap texture is replaced with the integral of incident illumination towards corresponding direction weighted with the Phong lobe. Each mipmap is convolved with varying Phong exponent - high resolution mipmaps represent glossy reflection while low resolution mips are very blurry and useful for very rough specular reflection.

Can be used to reflect light on glossy and rough objects by sampling with the reflection vector.

Additional resources: TextureImporterSettings.cubemapConvolution.
