<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadback.RequestIntoNativeArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | Reference to the NativeArray to write the data into. The NativeArray or underlying memory cannot be Disposed until the request is complete. |
| src | The Texture resource to read the data from. |
| mipIndex | The index of the mipmap to fetch. |
| dstFormat | The target TextureFormat of the data. Conversion happens automatically if this format is different from the format stored on the GPU. |
| x | The starting x-coordinate, in pixels, of the Texture data to fetch. |
| width | The width, in pixels, of the Texture data to fetch. |
| y | The starting y-coordinate, in pixels, of the Texture data to fetch. |
| height | The height, in pixels, of the Texture data to fetch. |
| z | The starting z-coordinate, in pixels, of the Texture3D to fetch. For TextureCube, Texture2DArray, and TextureCubeArray, this is the index of the start layer. |
| depth | The depth, in pixels of the Texture3D to fetch. For TextureCube, Texture2DArray, and TextureCubeArray, this is the number of layers to retrieve. |
| callback | An optional delegate System.Action to call after Unity completes the request. When Unity calls the delegate, it passes the completed request as a parameter to the System.Action. |

### Returns

**AsyncGPUReadbackRequest** Returns an AsyncGPUReadbackRequest that you can use to determine when the data is available. Otherwise, returns a request with an error.

### Description

Retrieves data asynchronously from a GPU Texture resource.

If the return value is a request with an error, calling AsyncGPUReadbackRequest.hasError returns true.

For texture data, the extents are checked against the size of the source texture. If graphics QualitySettings are set low enough to generate reduced size textures, then the reduced size must be requested. Use QualitySettings.masterTextureLimit to adjust the width and height (and x,y if required), by bit shifting right.

For texture data, use the SystemInfo.IsFormatSupported method with the GraphicsFormatUsage.ReadPixels flag to query if the format is supported.

### Parameters

| Parameter | Description |
| --- | --- |
| output | Reference to the NativeArray to write the data into. The NativeArray or underlying memory cannot be Disposed until the request is complete. |
| src | The GraphicsBuffer to read the data from. |
| size | The size, in bytes, of the data to retrieve from the GraphicsBuffer. |
| offset | Offset in bytes in the GraphicsBuffer. |
| callback | An optional delegate System.Action to call after Unity completes the request. When Unity calls the delegate, it passes the completed request as a parameter to the System.Action. |

### Returns

**void** Returns an AsyncGPUReadbackRequest that you can use to determine when the data is available. Otherwise, returns a request with an error.

### Description

Retrieves data asynchronously from a GPU Graphics Buffer resource.

If the return value is a request with an error, calling AsyncGPUReadbackRequest.hasError returns true.

For texture data, the extents are checked against the size of the source texture. If graphics QualitySettings are set low enough to generate reduced size textures, then the reduced size must be requested. Use QualitySettings.masterTextureLimit to adjust the width and height (and x,y if required), by bit shifting right.

For texture data, use the SystemInfo.IsFormatSupported method with the GraphicsFormatUsage.ReadPixels flag to query if the format is supported.
