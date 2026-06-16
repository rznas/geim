<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.DXT5.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compressed color with alpha channel texture format.

DXT5 (BC3) format compresses textures to 8 bits per pixel, and is widely supported on PC and console platforms.

It is a good format to compress most of RGBA textures. For RGB (without alpha) textures, DXT1 is better. When targeting DX11-class hardware (modern PC, PS4, XboxOne), using BC7 might be useful, since compression quality is often better.

Additional resources: Texture2D.format, texture assets.
