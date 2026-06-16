<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class for handling 3D Textures, Use this to create 3D texture assets.

3D textures are commonly used as lookup tables by shaders, or to represent volumetric data.

Typically you'd create a 3D texture, fill it up with data (SetPixels or SetPixels32) and call Apply to upload the data to the GPU.

Note that this class does not support Texture3D creation with a Crunch compression TextureFormat.

### Properties

| Property | Description |
| --- | --- |
| depth | The depth of the texture (Read Only). |
| format | The format of the pixel data in the texture (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| Texture3D | Create a new empty 3D Texture. |

### Public Methods

| Method | Description |
| --- | --- |
| Apply | Copies changes you've made in a CPU texture to the GPU. |
| CopyPixels | Copies pixel data from another texture on the CPU. |
| GetPixel | Gets the pixel color at coordinates (x, y, z). |
| GetPixelBilinear | Gets the filtered pixel color at the normalized coordinates (u, v, w). |
| GetPixelData | Gets the raw data from a texture. |
| GetPixels | Gets the pixel color data for a mipmap level as Color structs. |
| GetPixels32 | Gets the pixel color data for a mipmap level as Color32 structs. |
| SetPixel | Sets the pixel color at coordinates (x, y, z). |
| SetPixelData | Sets the raw data of an entire mipmap level directly in CPU memory. |
| SetPixels | Sets the pixel colors of an entire mipmap level. |
| SetPixels32 | Sets the pixel colors of an entire mipmap level. |
| UpdateExternalTexture | Updates Unity texture to use different native texture object. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateExternalTexture | Creates a Unity Texture out of an externally created native texture object. |

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
