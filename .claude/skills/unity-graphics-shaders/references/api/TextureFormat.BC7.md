<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.BC7.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

High quality compressed color texture format.

BC7 format compresses textures to 8 bits per pixel, and is supported on DX11-class PC hardware, as well as PS4 and XboxOne.

Generally it produces better quality than the more widely available DXT5 format, however it requires a modern GPU, and texture compression during import time is often slower too. Note that BC7 is not available on Mac when using OpenGL.

When loading BC7 textures on a platform that does not support it, the texture will be decompressed into RGBA32 format (32 bits per pixel) at load time.

Additional resources: Texture2D.format, texture assets.
