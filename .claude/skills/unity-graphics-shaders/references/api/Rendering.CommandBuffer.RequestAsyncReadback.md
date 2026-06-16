<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.RequestAsyncReadback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The resource to read the data from. |
| size | Size in bytes of the data to be retrieved from the ComputeBuffer or GraphicsBuffer. |
| offset | Offset in bytes in the ComputeBuffer or GraphicsBuffer. |
| mipIndex | The index of the mipmap to be fetched. |
| dstFormat | The target TextureFormat of the data. Conversion will happen automatically if format is different from the format stored on GPU. |
| x | Starting X coordinate in pixels of the Texture data to be fetched. |
| y | Starting Y coordinate in pixels of the Texture data to be fetched. |
| z | Start Z coordinate in pixels for the Texture3D being fetched. Index of Start layer for TextureCube, Texture2DArray and TextureCubeArray being fetched. |
| depth | Depth in pixels for Texture3D being fetched. Number of layers for TextureCube, TextureArray and TextureCubeArray. |
| width | Width in pixels of the Texture data to be fetched. |
| height | Height in pixels of the Texture data to be fetched. |
| callback | A delegate System.Action called once the request is fullfilled. The done request is passed as parameter to the System.Action. |

### Description

Adds an asynchonous GPU readback request command to the command buffer.

Additional resources: AsyncGPUReadback.Request.
