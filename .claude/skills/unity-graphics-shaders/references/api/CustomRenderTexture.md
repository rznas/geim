<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom Render Textures are an extension to Render Textures that allow you to render directly to the Texture using a Shader.

Custom Render Textures are an extension to Render Textures that allow you to update a texture with a Shader, and then use it in a regular Material. This is useful for implementing all kinds of complex simulations, for instance: water caustics, ripple simulations for rain effects, or splatting liquids against a wall. Also provided is a scripting and Shader framework to help with more complicated configurations like partial or multi-pass updates, and varying update frequency.

### Properties

| Property | Description |
| --- | --- |
| cubemapFaceMask | The bit field that you can use to enable or disable update on each of the cubemap faces. The bit order from least to most significant bit is as follows: +X, -X, +Y, -Y, +Z, -Z. |
| doubleBuffered | When this parameter is set to true, Unity double-buffers the Custom Render Texture so that you can access it during its own update. |
| initializationColor | The color that Unity uses to initialize a Custom Render Texture. Unity ignores this parameter if an initializationMaterial is set. |
| initializationMaterial | The Material that Unity uses to initialize a Custom Render Texture. Initialization texture and color are ignored if you have set this parameter. |
| initializationMode | Determine how Unity initializes a texture. |
| initializationSource | Determine if Unity initializes the Custom Render Texture with a Texture and a Color or a Material. |
| initializationTexture | The Texture that Unity uses to initialize a Custom Render Texture, multiplied by the initialization color. Unity ignores this parameter if an initializationMaterial is set. |
| material | The Material that Unity uses to initialize the content of a Custom Render Texture. |
| shaderPass | The Shader Pass Unity uses to update the Custom Render Texture. |
| updateMode | Determine how Unity updates the Custom Render Texture. |
| updatePeriod | The period in seconds that Unity updates real-time Custom Render Textures. A value of 0.0 means Unity updates real-time Custom Render Textures every frame. |
| updateZoneSpace | The space in which Unity expresses update zones. You can set this to Normalized or Pixel space. |
| wrapUpdateZones | When this parameter is set to true, Unity wraps Update zones around the border of the Custom Render Texture. Otherwise, Unity clamps Update zones at the border of the Custom Render Texture. |

### Constructors

| Constructor | Description |
| --- | --- |
| CustomRenderTexture | Create a new Custom Render Texture. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearUpdateZones | Clear all Update Zones. |
| EnsureDoubleBufferConsistency | Updates the internal Render Texture that a Custom Render Texture uses for double buffering, so that it matches the size and format of the Custom Render Texture. |
| GetDoubleBufferRenderTexture | Gets the Render Texture that this Custom Render Texture uses for double buffering. |
| GetUpdateZones | Returns the list of Update Zones. |
| Initialize | Initializes the Custom Render Texture at the start of the next frame. Unity calls /Initialise()/ before /CustomRenderTexture.Update/. |
| SetUpdateZones | Setup the list of Update Zones for the Custom Render Texture. |
| Update | Triggers an update of the Custom Render Texture. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| active | Currently active render texture. |
| allowThreadedTextureCreation | Allow Unity internals to perform Texture creation on any thread (rather than the dedicated render thread). |
| currentTextureMemory | The amount of memory that all Textures in the scene use. |
| desiredTextureMemory | The total amount of texture memory, in bytes, that Unity would use if no constraints are applied. |
| GenerateAllMips | Can be used with Texture constructors that take a mip count to indicate that all mips should be generated. The value of this field is -1. |
| nonStreamingTextureCount | The number of non-streaming Textures in the scene. This includes instances of Texture2D and CubeMap Textures. This does not include any other Texture types, or 2D and CubeMap Textures that Unity creates internally. |
| nonStreamingTextureMemory | The amount of memory Unity allocates for non-streaming Textures in the scene. This only includes instances of Texture2D and CubeMap Textures. This does not include any other Texture types, or 2D and CubeMap Textures that Unity creates internally. |
| streamingMipmapUploadCount | How many times has a Texture been uploaded due to Texture mipmap streaming. |
| streamingRendererCount | Number of renderers registered with the Texture streaming system. |
| streamingTextureCount | Number of streaming Textures. |
| streamingTextureDiscardUnusedMips | This property forces the streaming Texture system to discard all unused mipmaps instead of caching them until the Texture memory budget is exceeded. This is useful when you profile or write tests to keep a predictable set of Textures in memory. |
| streamingTextureForceLoadAll | Force streaming Textures to load all mipmap levels. |
| streamingTextureLoadingCount | Number of streaming Textures with mipmaps currently loading. |
| streamingTexturePendingLoadCount | Number of streaming Textures with outstanding mipmaps to be loaded. |
| targetTextureMemory | Total texture memory usage in bytes after applying the memory budget and loading all textures. |
| totalTextureMemory | The total texture memory, in bytes, that Unity would use if all textures are loaded at full resolution. |

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |
| antiAliasing | The antialiasing level for the RenderTexture. |
| autoGenerateMips | Mipmap levels are generated automatically when this flag is set. |
| bindTextureMS | If true and antiAliasing is greater than 1, the render texture will not be resolved by default. Use this if the render texture needs to be bound as a multisampled texture in a shader. |
| colorBuffer | Color buffer of the render texture (Read Only). |
| depth | The precision of the render texture's depth buffer in bits (0, 16, 24 and 32 are supported). |
| depthBuffer | Depth/stencil buffer of the render texture (Read Only). |
| depthStencilFormat | The format of the depth/stencil buffer. |
| descriptor | This struct contains all the information required to create a RenderTexture. It can be copied, cached, and reused to easily create RenderTextures that all share the same properties. |
| dimension | Dimensionality (type) of the render texture. |
| enableRandomWrite | Enable random access write into this render texture on Shader Model 5.0 level shaders. |
| enableShadingRate | Make this render texture usable as a shading rate image. |
| graphicsFormat | The color format of the render texture. You can set the color format to None to achieve depth-only rendering. |
| height | The height of the render texture in pixels. |
| memorylessMode | The render texture memoryless mode property. |
| sRGB | Does this render texture use sRGB read/write conversions? (Read Only). |
| stencilFormat | The format of the stencil data that you can encapsulate within a RenderTexture.Specifying this property creates a stencil element for the RenderTexture and sets its format. This allows for stencil data to be bound as a Texture to all shader types for the platforms that support it. This property does not specify the format of the stencil buffer, which is constrained by the depth buffer format specified in RenderTexture.depth.Currently, most platforms only support R8_UInt (DirectX11, DirectX12), while PS4 also supports R8_UNorm. |
| useDynamicScale | When this flag is set to true, render texture is set to be used by the Dynamic Resolution system. |
| useDynamicScaleExplicit | When this flag is set to true, render texture is set to be used by the Dynamic Resolution system. Scale is applied with an explicit call to ApplyDynamicScale |
| useMipMap | Render texture has mipmaps when this flag is set. |
| volumeDepth | Volume extent of a 3D render texture or number of slices of array texture. |
| vrUsage | If this RenderTexture is a VR eye texture used in stereoscopic rendering, this property decides what special rendering occurs, if any. |
| width | The width of the render texture in pixels. |
| anisoLevel | Defines the anisotropic filtering level of the Texture. |
| filterMode | Filtering mode of the Texture. |
| graphicsTexture | GraphicsTexture that represents the texture resource uploaded to the graphics device. |
| imageContentsHash | The hash value of the Texture. |
| isDataSRGB | Returns true if the texture pixel data is in sRGB color space. |
| isReadable | Whether Unity stores an additional copy of this texture's pixel data in CPU-addressable memory. |
| mipMapBias | The mipmap bias of the Texture. |
| mipmapCount | How many mipmap levels are in this Texture. |
| updateCount | This counter is incremented when the Texture is updated. |
| wrapMode | Options for sampling a texture if a texture coordinate is outside the [0, 1] range. |
| wrapModeU | Options for sampling a texture if the U texture coordinate is outside the [0, 1] range. |
| wrapModeV | Options for sampling a texture if the V texture coordinate is outside the [0, 1] range. |
| wrapModeW | Options for sampling a texture if the W coordinate is outside the [0, 1] range. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |
| ApplyDynamicScale | Applies the Dynamic Resolution system scale. |
| ConvertToEquirect | Converts the render texture to equirectangular format (both stereoscopic or monoscopic equirect). The left eye will occupy the top half and the right eye will occupy the bottom. The monoscopic version will occupy the whole texture. Texture dimension must be of type TextureDimension.Cube. |
| Create | Actually creates the RenderTexture. |
| DiscardContents | Hint the GPU driver that the contents of the RenderTexture will not be used. |
| GenerateMips | Generate mipmap levels of a render texture. |
| GetNativeDepthBufferPtr | Retrieve a native (underlying graphics API) pointer to the depth buffer resource. |
| IsCreated | Is the render texture actually created? |
| Release | Releases the RenderTexture. |
| ResolveAntiAliasedSurface | Force an antialiased render texture to be resolved. |
| SetGlobalShaderProperty | Assigns this RenderTexture as a global shader property named propertyName. |
| GetNativeTexturePtr | Retrieve a native (underlying graphics API) pointer to the Texture resource. |
| IncrementUpdateCount | Increment the update counter. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |
| GetTemporary | Allocate a temporary render texture. |
| ReleaseTemporary | Release a temporary texture allocated with GetTemporary. |
| SupportsStencil | Does a RenderTexture have stencil buffer? |
| SetGlobalAnisotropicFilteringLimits | Sets Anisotropic limits. |
| SetStreamingTextureMaterialDebugProperties | This function sets mipmap streaming debug properties on all materials known by the mipmap streaming system. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
