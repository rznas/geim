<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScalableBufferManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scales render textures to support dynamic resolution if the target platform/graphics API supports it.

The `ScalableBufferManager` class handles the scaling of any render textures that you have marked as `DynamicallyScalable` when `ResizeBuffers` is called. All render textures marked as `DynamicallyScalable` are scaled by a width and height scale factor. The scale is controlled through a scale factor and not with a specific width and height value because even though render textures are of different sizes, they need to be scaled by a common factor. 

The current implementation only supports discrete scale factors in the range of 0.05 and 1.0 in steps of 0.05 to be consistent across all platforms. Unity automatically selects the closest supported scale factors. You can access the selected scale factors using ScalableBufferManager.widthScaleFactor and ScalableBufferManager.heightScaleFactor.

The scaled dimensions are calculated as follows:

width = ceil(renderTexture.width * ScalableBufferManager.widthScaleFactor) height = ceil(renderTexture.height * ScalableBufferManager.heightScaleFactor)

The render textures that you have marked as `DynamicallyScalableExplicit` are not scaled by a call to `ResizeBuffers` but by a call to `RenderTexture.ApplyDynamicScale`. Scaling is subject to the exact same process as `ResizeBuffers`.

### Static Properties

| Property | Description |
| --- | --- |
| heightScaleFactor | Height scale factor to control dynamic resolution. |
| widthScaleFactor | Width scale factor to control dynamic resolution. |

### Static Methods

| Method | Description |
| --- | --- |
| ResizeBuffers | Function to resize all buffers marked as DynamicallyScalable. |
