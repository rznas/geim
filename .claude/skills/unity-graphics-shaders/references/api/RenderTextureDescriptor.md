<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct contains all the information required to create a RenderTexture. It can be copied, cached, and reused to easily create RenderTextures that all share the same properties. Avoid using the default constructor as it does not initialize some flags with the recommended values.

### Properties

| Property | Description |
| --- | --- |
| autoGenerateMips | Mipmap levels are generated automatically when this flag is set. |
| bindMS | If true and msaaSamples is greater than 1, the render texture will not be resolved by default. Use this if the render texture needs to be bound as a multisampled texture in a shader. |
| colorFormat | The format of the RenderTarget is expressed as a RenderTextureFormat. Internally, this format is stored as a GraphicsFormat compatible with the current system (see SystemInfo.GetCompatibleFormat). Therefore, if you set a format and immediately get it again, it may return a different result from the one just set. |
| depthBufferBits | The precision of the render texture's depth buffer in bits (0, 16, 24 and 32 are supported). |
| depthStencilFormat | The desired format of the depth/stencil buffer. |
| dimension | Dimensionality (type) of the render texture.Additional resources: RenderTexture.dimension. |
| enableRandomWrite | Enable random access write into this render texture on Shader Model 5.0 level shaders.Additional resources: RenderTexture.enableRandomWrite. |
| enableShadingRate | Make this render texture usable as a shading rate image. |
| flags | A set of RenderTextureCreationFlags that control how the texture is created. |
| graphicsFormat | The color format for the RenderTexture. You can set this format to None to achieve depth-only rendering. |
| height | The height of the render texture in pixels. |
| memoryless | The render texture memoryless mode property. |
| mipCount | User-defined mipmap count. |
| msaaSamples | The multisample antialiasing level for the RenderTexture.Additional resources: RenderTexture.antiAliasing. |
| shadowSamplingMode | Determines how the RenderTexture is sampled if it is used as a shadow map.Additional resources: ShadowSamplingMode for more details. |
| sRGB | This flag causes the render texture uses sRGB read/write conversions. |
| stencilFormat | The format of the stencil data that you can encapsulate within a RenderTexture.Specifying this property creates a stencil element for the RenderTexture and sets its format. This allows for stencil data to be bound as a Texture to all shader types for the platforms that support it. This property does not specify the format of the stencil buffer, which is constrained by the depth buffer format specified in RenderTexture.depth.Currently, most platforms only support R8_UInt (DirectX11, DirectX12), while PS4 also supports R8_UNorm. |
| useDynamicScale | Set to true to enable dynamic resolution scaling on this render texture. Mutually exclusive with RenderTextureDescriptor.useDynamicScaleExplicitAdditional resources: RenderTexture.useDynamicScale. |
| useDynamicScaleExplicit | Set to true to enable dynamic resolution scaling on this render texture and control when this scaling happens. Mutually exclusive with RenderTextureDescriptor.useDynamicScaleAdditional resources: RenderTexture.useDynamicScaleExplicit. |
| useMipMap | Render texture has mipmaps when this flag is set.Additional resources: RenderTexture.useMipMap. |
| volumeDepth | Volume extent of a 3D render texture. |
| vrUsage | If this RenderTexture is a VR eye texture used in stereoscopic rendering, this property decides what special rendering occurs, if any. Instead of setting this manually, use the value returned by eyeTextureDesc or other VR functions returning a RenderTextureDescriptor. |
| width | The width of the render texture in pixels. |

### Constructors

| Constructor | Description |
| --- | --- |
| RenderTextureDescriptor | Create a RenderTextureDescriptor with default values, or a certain width, height, and format. |
