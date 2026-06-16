<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.RequestAsyncReadbackIntoNativeSlice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | Reference to a NativeSlice to write the data into. |
| src | The resource to read the data from. |
| mipIndex | The index of the mipmap to fetch. |
| dstFormat | The target TextureFormat of the data. If the target format is different from the format stored on the GPU, the conversion is automatic. |
| x | The starting x-coordinate, in pixels, of the Texture data to fetch. |
| y | The starting y-coordinate, in pixels, of the Texture data to fetch. |
| z | The starting z-coordinate, in pixels, of the Texture3D to fetch. For TextureCube, Texture2DArray, and TextureCubeArray, this is the index of the start layer. |
| width | The width, in pixels, of the Texture data to fetch. |
| height | The height, in pixels, of the Texture data to fetch. |
| depth | The depth, in pixels of the Texture3D to fetch. For TextureCube, Texture2DArray, and TextureCubeArray, this is the number of layers to retrieve. |
| callback | A delegate System.Action to call after Unity completes the request. When Unity calls the delegate, it passes the completed request as a parameter to the System.Action. |

### Description

Adds an asynchonous GPU readback request command to the command buffer.

Additional resources: AsyncGPUReadback.RequestIntoNativeSlice.

### Parameters

| Parameter | Description |
| --- | --- |
| output | Reference to a NativeSlice to write the data into. |
| src | The resource to read the data from. |
| size | The size, in bytes, of the data to retrieve from the ComputeBuffer or GraphicsBuffer. |
| offset | The offset in bytes in the ComputeBuffer or GraphicsBuffer. |
| callback | A delegate System.Action to call after Unity completes the request. When Unity calls the delegate, it passes the completed request as a parameter to the System.Action. |

### Description

Adds an asynchonous GPU readback request command to the command buffer.

Additional resources: AsyncGPUReadback.RequestIntoNativeSlice.
