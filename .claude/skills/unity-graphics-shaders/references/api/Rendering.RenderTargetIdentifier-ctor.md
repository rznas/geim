<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderTargetIdentifier-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | Built-in temporary render texture type. |
| name | Temporary render texture name. |
| nameID | Temporary render texture name (as integer, see Shader.PropertyToID). |
| tex | RenderTexture or Texture object to use. |
| mipLevel | MipLevel of the RenderTexture to use. |
| cubemapFace | Cubemap face of the Cubemap RenderTexture to use. |
| depthSlice | Depth slice of the Array RenderTexture to use. The symbolic constant RenderTargetIdentifier.AllDepthSlices indicates that all slices should be bound for rendering. The default value is 0. |
| renderTargetIdentifier | An existing render target identifier. |

### Description

Creates a render target identifier.

Textures can be identified in a number of ways, for example a RenderTexture object, or a Texture object, or one of built-in render textures (BuiltinRenderTextureType), or a temporary render texture with a name (that was created using CommandBuffer.GetTemporaryRT).

RenderTargetIdentifier can be implicitly created from a RenderTexture reference, or a Texture reference, or a BuiltinRenderTextureType, or a name.

A RenderTargetIdentifier created from Texture reference is only valid when passed to CommandBuffer.SetGlobalTexture

See Also: CommandBuffer.SetRenderTarget, CommandBuffer.SetGlobalTexture.
