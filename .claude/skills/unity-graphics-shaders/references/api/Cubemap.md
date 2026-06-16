<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class for handling cube maps, Use this to create or modify existing cube map assets.

This class does not support Cubemap creation with a Crunch compression TextureFormat.

### Properties

| Property | Description |
| --- | --- |
| desiredMipmapLevel | The mipmap level that the streaming system would load before memory budgets are applied. |
| format | The format of the pixel data in the texture (Read Only). |
| loadedMipmapLevel | The mipmap level that is currently loaded by the streaming system. |
| loadingMipmapLevel | The mipmap level that the mipmap streaming system is in the process of loading. |
| requestedMipmapLevel | The mipmap level to load. |
| streamingMipmaps | Determines whether mipmap streaming is enabled for this Texture. |
| streamingMipmapsPriority | Sets the relative priority for this Texture when reducing memory size to fit within the memory budget. |

### Constructors

| Constructor | Description |
| --- | --- |
| Cubemap | Create a new empty cubemap texture. |

### Public Methods

| Method | Description |
| --- | --- |
| Apply | Copies changes you've made in a CPU texture to the GPU. |
| ClearRequestedMipmapLevel | Resets the requestedMipmapLevel field. |
| CopyPixels | Copies pixel data from another texture on the CPU. |
| GetPixel | Gets the pixel color at coordinates (x, y). |
| GetPixelData | Gets the raw data from a texture. |
| GetPixels | Gets the pixel color data for a mipmap level of a face as Color structs. |
| IsRequestedMipmapLevelLoaded | Checks to see whether the mipmap level set by requestedMipmapLevel has finished loading. |
| SetPixel | Sets the pixel color at coordinates (x,y). |
| SetPixelData | Sets the raw data of an entire mipmap level of a face directly in CPU memory. |
| SetPixels | Sets the pixel colors of an entire mipmap level of a face. |
| SmoothEdges | Performs smoothing of near edge regions. |
| UpdateExternalTexture | Updates Unity cubemap to use different native cubemap texture object. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateExternalTexture | Creates a Unity cubemap out of an externally created native cubemap object. |

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
