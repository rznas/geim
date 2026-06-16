<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-maxTexture3DSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum 3D texture size in pixels (Read Only).

The largest 3D texture width, height and depth that your graphics hardware supports.

 Unity only supports textures up to a size of 16384, even if `maxTexture3DSize` returns a larger size.

 You can only create a texture with the maximum size if you have enough memory. For example, to create a 3D texture with a size of 2048 in an uncompressed format such as TextureFormat.RGBA32, you need 32 gigabytes of memory because the amount of data is 4 bytes per pixel × 2048 x 2048 × 2048.

 Additional resources: maxTextureSize, Texture3D.
