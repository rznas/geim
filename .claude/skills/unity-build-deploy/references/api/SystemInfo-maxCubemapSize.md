<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-maxCubemapSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum cubemap texture size in pixels (Read Only).

The largest cubemap texture width and height that your graphics hardware supports.

 Unity only supports textures up to a size of 16384, even if `maxCubemapSize` returns a larger size.

 You can only create a texture with the maximum size if you have enough memory. For example, to create a cubemap with a size of 16384 in an uncompressed format such as TextureFormat.RGBA32, you need 6 gigabytes of memory because the amount of data is 4 bytes per pixel × 6 textures × 16384 x 16384.
