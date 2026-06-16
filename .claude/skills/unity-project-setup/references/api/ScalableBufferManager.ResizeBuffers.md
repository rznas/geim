<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScalableBufferManager.ResizeBuffers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| widthScale | New scale factor for the width that the ScalableBufferManager uses to resize all render textures that are marked as `DynamicallyScalable`. The value should be greater than 0.0, and less than or equal to 1.0 |
| heightScale | New scale factor for the height that the ScalableBufferManager uses to resize all render textures that are marked as `DynamicallyScalable`. The value should be greater than 0.0, and less than or equal to 1.0. |

### Description

Function to resize all buffers marked as DynamicallyScalable.

Takes in new width and height scale and stores and applies it to all render textures marked as DynamicallyScalable. Note that the scale is applied to the render textures original dimensions so a scale factor of 1.0 will always be the full dimensions for the specified render target, etc.

Vulkan and DirectX 12 only allow uniform scaling through the utilization of widthScale.
