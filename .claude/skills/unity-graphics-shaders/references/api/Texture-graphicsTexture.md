<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-graphicsTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsTexture that represents the texture resource uploaded to the graphics device.

The current GraphicsTexture object corresponding to the texture.

For RenderTextures, this returns the `GraphicsTexture` object that represents the color buffer. If the `RenderTexture` is depth-only and has a GraphicsFormat of `None`, it returns the `GraphicsTexture` object representing the depth buffer.

Note: When you use the Unity APIs to reinitialize the properties of a Texture object, or when a different mipmap level is streamed in, the underlying GraphicsTexture object changes. Instead of caching the value, retrieve the new GraphicsTexture by calling `Texture.graphicsTexture` again.
