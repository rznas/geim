<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo.GetTiledRenderTargetStorageSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | The GraphicsFormat format to look up. |
| sampleCount | The number of MSAA samples. |

### Returns

**int** The number of bytes per pixel that the specified format consumes in GPU render target or tile memory.

### Description

Returns the per-pixel storage size in bytes for a render target of the given GraphicsFormat on the current platform.

The storage size of a graphics format may differ from its nominal texel size depending on the specific GPU architecture and driver implementation in use. This value is important when configuring multiple render targets (MRT) or g-buffer setups, as the sum of all render target sizes must fit within the per-pixel budget allowed by the GPU. Many mobile devices use tile-based rendering GPUs, which cache render target data in tile memory during a render pass. Each GPU family defines a maximum storage budget per pixel. For example, on iOS GPU Family 1 the total is 16 bytes per pixel, while iOS GPU Families 2 and 3 allow 32 bytes per pixel. Some color-renderable pixel formats are internally expanded when stored in render target or tile memory and might consume more space than their logical bit depth suggests. This expansion can also be influenced by the use of multisample anti-aliasing (MSAA). On desktop and other non–tile-based GPUs, the exact behavior is implementation-dependent. It's recommended to query this method regularly to ensure that a given MRT configuration is valid on the current hardware and graphics API.
