<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.SupportsRenderRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera to verify if it supports this render request. |
| data | The render request to verify if the render pipeline supports it. |

### Returns

**bool** `true` if the combination of the camera and render pipeline supports the `RequestData` type.

### Description

Checks if the render pipeline supports the `RequestData` type with the camera.

Call this method before RenderPipeline.SubmitRenderRequest to verify if the render pipeline supports the `RequestData` render request. By default `SupportsRenderRequest` returns `false` unless the render pipeline implements RenderPipeline.IsRenderRequestSupported.

For an example that uses `SupportsRenderRequest`, refer to RenderPipeline.SubmitRenderRequest.
