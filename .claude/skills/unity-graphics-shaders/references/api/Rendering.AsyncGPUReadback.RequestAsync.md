<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.AsyncGPUReadback.RequestAsync.html
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
| z | Depth in pixels for Texture3D being fetched. Number of layers for TextureCube, TextureArray and TextureCubeArray. |
| depth | Depth in pixels for Texture3D being fetched. Number of layers for TextureCube, TextureArray and TextureCubeArray. |

### Description

Retrieves data asynchronously from a GPU resource.

See AsyncGPUReadback.Request.
