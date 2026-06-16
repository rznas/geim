<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-maxTextureSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum texture size in pixels (Read Only).

The largest texture width and height that your graphics hardware supports.

 Unity only supports textures up to a size of 16384, even if `maxTextureSize` returns a larger size.

 You can only create a texture with the maximum size if you have enough memory. For example, you need 1 gigabyte of memory to create a texture with a size of 16384, because the amount of data is 4 bytes per pixel × 16384 × 16384.
