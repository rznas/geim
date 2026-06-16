<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.BC6H.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

HDR compressed color texture format.

BC6H format compresses RGB HDR textures to 8 bits per pixel, and is supported on DX11-class PC hardware, as well as PS4 and XboxOne.

It is a good format for compressing floating point texture data (skyboxes, reflection probes, lightmaps, emissive textures), e.g. textures that uncompressed would be in RGBAHalf or RGBAFloat formats. Note that BC6H does not retain the alpha channel; it only stores RGB color channels.

When loading BC6H textures on a platform that doesn't support it, the texture decompresses into RGBAHalf format (64 bits per pixel) at load time.

Additional resources: Texture2D.format, texture assets.
