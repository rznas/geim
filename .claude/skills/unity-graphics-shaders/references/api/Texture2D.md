<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class that represents textures in C# code.

Use this class to create textures, or to modify existing texture assets.

The ImageConversion class provides extension methods to this class that handle image encoding functionality. For details on those methods, see the ImageConversion documentation.

Do not assume that the texture will be created and available in Awake. All texture uploads are synchronized on the Main thread at Start. Perform texture operations in Start.

### Static Properties

| Property | Description |
| --- | --- |
| blackTexture | Gets a small Texture with all black pixels. |
| grayTexture | Gets a small Texture with all gray pixels. |
| linearGrayTexture | Gets a small Texture with all gray pixels. |
| normalTexture | Gets a small Texture with pixels that represent surface normal vectors at a neutral position. |
| redTexture | Gets a small Texture with all red pixels. |
| whiteTexture | Gets a small Texture with all white pixels. |

### Properties

| Property | Description |
| --- | --- |
| activeMipmapLimit | The number of high resolution mipmap levels from the texture that Unity doesn't upload to the GPU. (Read Only) |
| alphaIsTransparency | Indicates whether this texture was imported with TextureImporter.alphaIsTransparency enabled. This setting is available only in the Editor scripts. Note that changing this setting will have no effect; it must be enabled in TextureImporter instead. |
| calculatedMipmapLevel | The mipmap level calculated by the streaming system, which takes into account the streaming Cameras and the location of the objects containing this Texture. This is unaffected by requestedMipmapLevel or minimumMipmapLevel. |
| desiredMipmapLevel | The mipmap level that the streaming system would load before memory budgets are applied. |
| format | The format of the pixel data in the texture (Read Only). |
| ignoreMipmapLimit | This property causes a texture to ignore all texture mipmap limit settings. |
| loadedMipmapLevel | The mipmap level that is currently loaded by the streaming system. |
| loadingMipmapLevel | The mipmap level that the mipmap streaming system is in the process of loading. |
| minimumMipmapLevel | Restricts the mipmap streaming system to a minimum mip level for this Texture. |
| mipmapLimitGroup | The name of the texture mipmap limit group that this texture is associated with. (Read Only) |
| requestedMipmapLevel | The mipmap level to load. |
| streamingMipmaps | Determines whether mipmap streaming is enabled for this Texture. |
| streamingMipmapsPriority | Sets the relative priority for this Texture when reducing memory size to fit within the memory budget. |
| vtOnly | Returns true if the VTOnly checkbox was checked when the texture was imported; otherwise returns false. For additional information, see TextureImporter.vtOnly. |

### Constructors

| Constructor | Description |
| --- | --- |
| Texture2D | Create a new empty texture. |

### Public Methods

| Method | Description |
| --- | --- |
| Apply | Copies changes you've made in a CPU texture to the GPU. |
| ClearMinimumMipmapLevel | Resets the minimumMipmapLevel field. |
| ClearRequestedMipmapLevel | Resets the requestedMipmapLevel field. |
| Compress | Compress texture at runtime to DXT/BCn or ETC formats. |
| CopyPixels | Copies pixel data from another texture on the CPU. |
| GetPixel | Gets the pixel color at coordinates (x, y). |
| GetPixelBilinear | Gets the filtered color at the normalized coordinates (u, v). |
| GetPixelData | Gets the raw data from a texture. |
| GetPixels | Gets the pixel color data for a mipmap level as Color structs. |
| GetPixels32 | Gets the pixel color data for a mipmap level as Color32 structs. |
| GetRawTextureData | Gets the raw data from a texture, as an array that points to memory. |
| IsRequestedMipmapLevelLoaded | Checks to see whether the mipmap level set by requestedMipmapLevel has finished loading. |
| LoadRawTextureData | Sets the raw data of an entire texture in CPU memory. |
| PackTextures | Packs multiple Textures into a texture atlas. |
| ReadPixels | Reads pixels from the current render target and writes them to a texture. |
| Reinitialize | Reinitializes a Texture2D, making it possible for you to replace width, height, textureformat, and graphicsformat data for that texture. |
| SetPixel | Sets the pixel color at coordinates (x,y). |
| SetPixelData | Sets the raw data of an entire mipmap level directly in CPU memory. |
| SetPixels | Sets the pixel colors of an entire mipmap level. |
| SetPixels32 | Sets the pixel colors of an entire mipmap level. |
| UpdateExternalTexture | Updates Unity texture to use different native texture object. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateExternalTexture | Creates a Unity Texture out of an externally created native texture object. |
| GenerateAtlas | Packs a set of rectangles into a square atlas, with optional padding between rectangles. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
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
| anisoLevel | Defines the anisotropic filtering level of the Texture. |
| dimension | Dimensionality (type) of the Texture. |
| filterMode | Filtering mode of the Texture. |
| graphicsFormat | Returns the GraphicsFormat format or color format of a Texture object. |
| graphicsTexture | GraphicsTexture that represents the texture resource uploaded to the graphics device. |
| height | Height of the Texture in pixels. |
| imageContentsHash | The hash value of the Texture. |
| isDataSRGB | Returns true if the texture pixel data is in sRGB color space. |
| isReadable | Whether Unity stores an additional copy of this texture's pixel data in CPU-addressable memory. |
| mipMapBias | The mipmap bias of the Texture. |
| mipmapCount | How many mipmap levels are in this Texture. |
| updateCount | This counter is incremented when the Texture is updated. |
| width | Width of the Texture in pixels. |
| wrapMode | Options for sampling a texture if a texture coordinate is outside the [0, 1] range. |
| wrapModeU | Options for sampling a texture if the U texture coordinate is outside the [0, 1] range. |
| wrapModeV | Options for sampling a texture if the V texture coordinate is outside the [0, 1] range. |
| wrapModeW | Options for sampling a texture if the W coordinate is outside the [0, 1] range. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |
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
| SetGlobalAnisotropicFilteringLimits | Sets Anisotropic limits. |
| SetStreamingTextureMaterialDebugProperties | This function sets mipmap streaming debug properties on all materials known by the mipmap streaming system. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
