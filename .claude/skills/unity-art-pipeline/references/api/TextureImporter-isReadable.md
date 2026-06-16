<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter-isReadable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether Unity stores an additional copy of the imported texture's pixel data in CPU-addressable memory.

By default, this is `false`. Set this to `true` only if you want to use the texture with methods that read, write, and manipulate the pixel data on the CPU, such as Texture2D.GetPixels or ImageConversion.EncodeToPNG.

 For more information, see Texture.isReadable.

 This corresponds to the **Read/Write Enabled** setting in the Texture Import Settings.
