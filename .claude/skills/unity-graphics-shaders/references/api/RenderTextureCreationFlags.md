<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureCreationFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set of flags that control the state of a newly-created RenderTexture.

### Properties

| Property | Description |
| --- | --- |
| MipMap | Set this flag to allocate mipmaps in the RenderTexture. See RenderTexture.useMipMap for more details. |
| AutoGenerateMips | Determines whether or not mipmaps are automatically generated when the RenderTexture is modified. This flag is set by default, and has no effect if the RenderTextureCreationFlags.MipMap flag is not also set. See RenderTexture.autoGenerateMips for more details. |
| SRGB | When this flag is set, reads and writes to this texture are converted to SRGB color space. See RenderTexture.sRGB for more details. |
| EyeTexture | Set this flag when the Texture is to be used as a VR eye texture. This flag is cleared by default. This flag is set on a RenderTextureDesc when it is returned from GetDefaultVREyeTextureDesc or other VR functions returning a RenderTextureDesc. |
| EnableRandomWrite | Set this flag to enable random access writes to the RenderTexture from shaders. Normally, pixel shaders only operate on pixels they are given. Compute shaders cannot write to textures without this flag. Random write enables shaders to write to arbitrary locations on a RenderTexture. See RenderTexture.enableRandomWrite for more details, including supported platforms. |
| CreatedFromScript | This flag is always set internally when a RenderTexture is created from script. It has no effect when set manually from script code. |
| AllowVerticalFlip | Clear this flag when a RenderTexture is a VR eye texture and the device does not automatically flip the texture when being displayed. This is platform specific and It is set by default. This flag is only cleared when part of a RenderTextureDesc that is returned from GetDefaultVREyeTextureDesc or other VR functions that return a RenderTextureDesc. Currently, only Hololens eye textures need to clear this flag. |
| NoResolvedColorSurface | When this flag is set, the engine will not automatically resolve the color surface. |
| DynamicallyScalable | Set this flag to mark this RenderTexture for Dynamic Resolution should the target platform/graphics API support Dynamic Resolution. |
| BindMS | Setting this flag causes the RenderTexture to be bound as a multisampled texture in a shader. The flag prevents the RenderTexture from being resolved by default when RenderTexture.antiAliasing is greater than 1. |
| ShadingRate | Set this flag to allocate the RenderTexture as shading rate image.Additional resources: ShadingRateImage. |
| DynamicallyScalableExplicit | Set this flag to mark this RenderTexture for Dynamic Resolution, if the target platform/graphics API supports Dynamic Resolution. |
