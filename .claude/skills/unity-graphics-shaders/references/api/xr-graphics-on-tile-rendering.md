<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/xr-graphics-on-tile-rendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Tile-based rendering in XR

Understand on-tile rendering in **XR**.

Tile-based GPUs are common in mobile and untethered XR devices. Performance on devices with a tile-based GPU is improved when your project uses features that are optimized for tile-based architecture.

Rendering off-tile results in additional render passes and requires intermediate data to be written to and read from external memory. Graphical loads are inefficient and increase memory bandwidth usage and power consumption, leading to reduced performance and shorter battery life. To maximize performance on untethered XR devices, minimize off-tile operations and use features optimized for tile-based rendering.

Refer to the following sections to learn more about tile-based rendering in XR, and methods to ensure rendering remains on-tile.

## About tile-based GPUs

Tile-based GPUs divide the screen into small regions (tiles), which are rendered on-chip in the tile buffer. When a tile is rendered, its data is written to the framebuffer in the main memory. Tile-based GPUs enable faster memory and improved power-efficiency on mobile and untethered XR devices.

## Tips to ensure tile-based rendering

If your project targets an untethered XR device and enables On-tile post-processing, you must ensure your project only renders on-tile.

Any feature that creates intermediate textures results in an additional final **blit** pass and breaks tile-based rendering, resulting in app and device performance issues.

Only memoryless intermediate textures are supported on-tile. To use memoryless intermediate textures, your project must use the Vulkan or Metal API. To understand how to configure your API, refer to Configure graphics APIs.

Features that create non-memoryless intermediate textures result in an additional final blit pass and are unable to stay on-tile, which breaks the render pass. Non-memoryless intermediate textures introduce performance issues from moving data from on-tile to off-tile memory.

You should avoid the following features on untethered XR devices as they introduce off-tile rendering:

- Intermediate textures
- Depth and Opaque textures.
- Upscaling filter
- URP built-in Post processing
- Renderer feature that require intermediate texture:
  - Decal
  - FullScreenPass if **FetchColorBuffer** is `true`
  - SSAO

### Use Render Graph Viewer to check render passes

To ensure your project remains on-tile, configure your URP asset and URP renderer to render directly to the eye texture, which means that your project uses a single merged render pass. You can use the Render Graph Viewer to Analyze a render graph in URP and Merge render passes.

#### Render Graph Viewer example

The following image demonstrates the optimal pipeline configuration with on-tile **post-processing** and how to interpret the Render Graph Viewer:

The blue line (A) represents merged render passes.

**cameraTargetAttachment** (B) and **cameraDepthAttachment (C)** are memoryless on-tile resources. The on-tile post-processing features uses frame buffer fetch (denoted by an **F** symbol) (D) to fetch the **cameraTargetAttachment** and write to the **Backbuffer color** (E).

## Additional resources

- On-tile post processing
- Optimize for untethered XR devices in URP
- Mobile GPUs and tiled rendering (Meta developer documentation)
