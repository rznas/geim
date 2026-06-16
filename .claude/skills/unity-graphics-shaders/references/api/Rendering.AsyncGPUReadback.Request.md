<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadback.Request.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | Resource to read the data from. |
| size | Size in bytes of the data to be retrieved from the ComputeBuffer or GraphicsBuffer. |
| offset | Offset in bytes in the ComputeBuffer or GraphicsBuffer. |
| mipIndex | Index of the mipmap to be fetched. |
| dstFormat | Target TextureFormat of the data. If the target format is different from the format stored on the GPU, the conversion is automatic. |
| x | Starting X coordinate in pixels of the Texture data to be fetched. |
| width | Width in pixels of the Texture data to be fetched. |
| y | Starting Y coordinate in pixels of the Texture data to be fetched. |
| height | Height in pixels of the Texture data to be fetched. |
| z | Start Z coordinate in pixels for the Texture3D being fetched. Index of Start layer for TextureCube, Texture2DArray and TextureCubeArray being fetched. |
| depth | Depth in pixels for Texture3D being fetched. Number of layers for TextureCube, TextureArray and TextureCubeArray. |
| callback | An optional delegate System.Action called once the request is fullfilled. The completed request is passed as parameter to the System.Action. |

### Returns

**AsyncGPUReadbackRequest** Returns an AsyncGPUReadbackRequest that you can use to determine when the data is available. Otherwise, a request with an error is returned.

### Description

Retrieves data asynchronously from a GPU resource.

If a request with an error is returned, calling AsyncGPUReadbackRequest.hasError returns true.

 For texture data, the extents are checked against the size of the source texture. If graphics QualitySettings are set low enough to generate reduced size textures, then the reduced size must be requested. Use QualitySettings.masterTextureLimit to adjust the width and height (and x,y if required), by bit shifting right.

 For texture data, use the SystemInfo.IsFormatSupported method with the GraphicsFormatUsage.ReadPixels flag to query if the format is supported.

 If you use this function to request data about a temporary render texture, don't release the texture using RenderTexture.ReleaseTemporary until the request is complete.
