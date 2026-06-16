<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SparseTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class for handling Sparse Textures.

Sparse textures are textures where not the whole texture data can be present in memory at once. They are also commonly called "tiled textures" or "mega textures".

Imagine a 16384x16384 texture at 32 bits per pixel - it would take 1GB of memory. The texture is broken down into rectangular "tiles", and each tile can either be present in memory or not. You can load & unload these tiles as needed based on distance from the camera, sectors of the world that the player has to see, etc.

Otherwise, the sparse textures behave just like any other texture in shaders - they can have mipmaps, can use all texture filtering modes, etc. If you happen to read from a tile that's not present, you can get undefined result (on many GPUs the result is a black color, but that's not guaranteed).

Not all hardware and platforms support sparse textures, so you should check SystemInfo.supportsSparseTextures before using them. For example, on DirectX systems they require DX11.2 (Windows 8.1) and a fairly recent GPU; and on OpenGL they require ARB_sparse_texture extension support. Sparse textures only support non-compressed texture formats.

After creating the sparse texture, query the tile size with tileWidth & tileHeight. Tile sizes are platform and GPU dependent.

Use UpdateTile or UpdateTileRaw to make a tile resident in memory and update its color data. Use UnloadTile to unload a tile.

Additional resources: Sparse Textures.

### Properties

| Property | Description |
| --- | --- |
| isCreated | Is the sparse texture actually created? (Read Only) |
| tileHeight | Get sparse texture tile height (Read Only). |
| tileWidth | Get sparse texture tile width (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| SparseTexture | Create a sparse texture. |

### Public Methods

| Method | Description |
| --- | --- |
| UnloadTile | Unload sparse texture tile. |
| UpdateTile | Update sparse texture tile with color values. |
| UpdateTileRaw | Update sparse texture tile with raw pixel values. |

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
