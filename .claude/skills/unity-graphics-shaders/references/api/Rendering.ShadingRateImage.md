<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadingRateImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulate the informations and capabilities related to variable rate shading images.

To accommodate various graphic APIs, post-process configurations, and XR support, shading rate images need both an image and its vertically flipped version. While some combinations directly use the image, others require a flipped version. To simplify development, Unity combines both. The resolution of shading rate images is stored in tiles and is platform-dependent. Functions that need to be aware of the resolution specify how they handle conversion between tiles and pixels. Additional resources: CommandBuffer.SetShadingRateImage, ShadingRateInfo.supportsPerImageTile.

### Static Methods

| Method | Description |
| --- | --- |
| AllocFromPixelSize | Creates a shading rate image. This function performs the conversion from pixel to tile before the allocation. |
| GetAllocTileSize | Returns the tile size based on the given pixel size. |
| GetRenderTextureDescriptor | Utility function to create a RenderTextureDescriptor compatible with a shading rate image. This function does not perform the conversion from pixel to tile. |
