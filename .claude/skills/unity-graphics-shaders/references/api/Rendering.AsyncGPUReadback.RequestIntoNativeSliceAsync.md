<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadback.RequestIntoNativeSliceAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | Reference to the NativeSlice to write the data into. The underlying memory cannot be Disposed until the request is complete. |
| src | The Texture resource to read the data from. |
| mipIndex | The index of the mipmap to fetch. |
| dstFormat | The target TextureFormat of the data. Conversion happens automatically if this format is different from the format stored on the GPU. |
| x | The starting x-coordinate, in pixels, of the Texture data to fetch. |
| width | The width, in pixels, of the Texture data to fetch. |
| y | The starting y-coordinate, in pixels, of the Texture data to fetch. |
| height | The height, in pixels, of the Texture data to fetch. |
| z | The starting z-coordinate, in pixels, of the Texture3D to fetch. For TextureCube, Texture2DArray, and TextureCubeArray, this is the index of the start layer. |
| depth | The depth, in pixels of the Texture3D to fetch. For TextureCube, Texture2DArray, and TextureCubeArray, this is the number of layers to retrieve. |

### Description

Retrieves data asynchronously from a GPU Texture resource.

See AsyncGPUReadback.RequestIntoNativeSlice.

### Parameters

| Parameter | Description |
| --- | --- |
| output | Reference to the NativeSlice to write the data into. The underlying memory cannot be Disposed until the request is complete. |
| src | The GraphicsBuffer to read the data from. |
| size | The size, in bytes, of the data to retrieve from the GraphicsBuffer. |
| offset | Offset in bytes in the GraphicsBuffer. |

### Description

Retrieves data asynchronously from a GPU Graphics Buffer resource.

See AsyncGPUReadback.RequestIntoNativeSlice.
