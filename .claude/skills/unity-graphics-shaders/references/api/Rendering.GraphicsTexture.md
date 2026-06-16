<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the view on a single texture resource that is uploaded to the graphics device.

A GraphicsTexture specifically represents the actual resource that a Texture object uploads to the GPU. A Texture may create several different GraphicsTextures in its lifetime (such as to represent different mipmap levels or the color and depth buffers in a RenderTexture) and will recreate GraphicsTextures when certain changes are made to the Texture (such as resizing). Use Texture.graphicsTexture to get a Texture's current GraphicsTexture.

GraphicsTextures are useful for getting the current uploaded state of a texture on the graphics device. GraphicsTextureDescriptor.mipCount represents only the uploaded mipmap levels when using texture streaming or mipmap limit settings. Consequently, GraphicsTextureDescriptor.width and GraphicsTextureDescriptor.height represent the width and height of the maximum uploaded mipmap level.

GraphicsTextures are purely run-time objects and cannot be saved as assets.

To use a GraphicsTexture as a render target, it must have GraphicsTextureDescriptorFlags.RenderTarget enabled in its GraphicsTextureDescriptor.flags.

Additional resources: Texture.graphicsTexture, Graphics.SetRenderTarget.

### Static Properties

| Property | Description |
| --- | --- |
| active | Currently active graphics texture. |

### Properties

| Property | Description |
| --- | --- |
| descriptor | Contains all the information Unity uses to create a GraphicsTexture. |
| state | The current state of a GraphicsTexture. |
