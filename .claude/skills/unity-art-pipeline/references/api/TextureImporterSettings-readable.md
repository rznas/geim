<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSettings-readable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is texture data readable from scripts.

Texture has to be set as "readable" in order for Texture2D.GetPixel, Texture2D.GetPixels and similar functions to work. Textures are **not** set as readable by default.

When texture is not readable, it consumes much less memory, because a system-memory copy does not have to be kept around after texture is uploaded to the graphics API.
