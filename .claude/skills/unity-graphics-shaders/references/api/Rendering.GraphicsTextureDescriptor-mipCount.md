<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTextureDescriptor-mipCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of mipmap levels in this GraphicsTexture.

The value includes the base level, so it must always be 1 or more. Note that a GraphicsTexture represents what is uploaded to the GPU, so this value may differ from Texture.mipmapCount depending on the values of Texture2D.activeMipmapLimit and Texture2D.streamingMipmaps.

 If the GraphicsTextureDescriptor.format is a depth-only format, then mipCount is ignored.
