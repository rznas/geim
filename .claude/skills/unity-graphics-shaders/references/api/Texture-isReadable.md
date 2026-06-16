<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-isReadable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether Unity stores an additional copy of this texture's pixel data in CPU-addressable memory.

This is required for methods that read, write, and manipulate the pixel data on the CPU, such as Texture2D.GetPixels or ImageConversion.EncodeToPNG. It is not required for methods that perform all their work on the GPU, such as Graphics.CopyTexture or Graphics.Blit.

 By default, this is `false` for texture assets that you import into your project. To toggle this, use the **Read/Write Enabled** setting in the Texture Import Settings, or set TextureImporter.isReadable.

 By default, this is `true` when you create a texture from a script.

**Note:** Readable textures use more memory than non-readable textures. You should only make a texture readable when you need to, and you should make textures non-readable when you are done working with the data on the CPU.

To make a texture non-readable at runtime, call the `Apply` method for your type of texture, for example Texture2D.Apply or Cubemap.Apply and set the `makeNoLongerReadable` parameter to `true`.
