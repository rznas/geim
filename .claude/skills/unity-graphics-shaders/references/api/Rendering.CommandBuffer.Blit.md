<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.Blit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The source texture or RenderTargetIdentifier. |
| dest | The destination RenderTargetIdentifier. |
| mat | The material to use. If you don't provide `mat`, Unity uses a default material. |
| pass | If the value is `-1`, Unity draws all the passes in `mat`. Otherwise, Unity draws only the pass you set `pass` to. The default value is `-1`. |
| scale | The scale to apply. |
| offset | The offset to apply. |
| sourceDepthSlice | The element in the source texture to copy from, for example the texture in a texture array. You can't use `sourceDepthSlice` to specify a face in a Cubemap. |
| destDepthSlice | The element in the destination texture to copy from, for example the texture in a texture array. You can't use `destDepthSlice` to specify a face in a Cubemap. |

### Description

Adds a command to use a shader to copy the pixel data from a texture into a render texture.

This method adds a command to copy pixel data from a texture on the GPU to a render texture on the GPU. This is one of the fastest ways to copy a texture.

When you use `Graphics.Blit`, Unity does the following:

1. Sets the active render texture to the `dest` texture.
2. Passes `source` to the `mat` material as the `_MainTex` property.
3. Uses the material's shader to draw a full-screen surface from the `source` texture to the `dest` texture.

If you provide a `mat` material that doesn't have a `_MainTex` property, `Blit` doesn't use `source`.

You can use `Graphics.Blit` to create post-processing effects, by setting `mat` to a material with a custom shader.

`Blit` changes RenderTexture.active. Store the active render texture before you use `Blit` if you need to use it afterwards.

Avoid setting `source` and `dest` to the same render texture, as this may cause undefined behaviour. Use Custom Render Textures with double buffering instead, or use two render textures and alternate between them to implement double buffering manually.

In linear color space, set GL.sRGBWrite before using `Blit`, to make sure the sRGB-to-linear color conversion is what you expect.

To blit to the screen in the Built-in Render Pipeline, follow these steps:

1. Set `dest` to `null`. Unity now uses `Camera.main.targetTexture` as the destination texture.
2. Set the Camera.targetTexture property of Camera.main to `null`.

To blit to the screen in the Universal Render Pipeline (URP) or the High Definition Render Pipeline (HDRP), you must call Graphics.Blit or CommandBuffer.Blit inside a method that you call from the RenderPipelineManager.endContextRendering callback.

If you want to use a depth or stencil buffer that is part of the `source` (Render)texture, or blit to a subregion of a texture, you have to manually write an equivalent of the Graphics.Blit function - i.e. Graphics.SetRenderTarget with destination color buffer and source depth buffer, setup orthographic projection (GL.LoadOrtho), setup material pass (Material.SetPass) and draw a quad (GL.Begin).

Often the previous content of the Blit `dest` does not need to be preserved. In this case, it is recommended to activate the `dest` render target explicitly with the appropriate load and store actions using SetRenderTarget. The Blit dest should then be set to BuiltinRenderTextureType.CurrentActive.

Additional resources: Graphics.BlitMultiTap, Post-processing effects.
