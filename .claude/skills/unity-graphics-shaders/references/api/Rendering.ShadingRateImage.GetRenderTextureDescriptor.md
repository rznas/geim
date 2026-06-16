<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadingRateImage.GetRenderTextureDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | Width of shading rate image |
| height | Height of shading rate image |
| volumeDepth | The number of slices of the shading rate image. The default value is 1. |
| textureDimension | Dimensionality of the resulting shading rate image. The default value is Rendering.TextureDimension.2D |

### Returns

**RenderTextureDescriptor** The render texture descriptor compatible for shading rate image.

### Description

Utility function to create a RenderTextureDescriptor compatible with a shading rate image. This function does not perform the conversion from pixel to tile.
