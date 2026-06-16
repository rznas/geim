<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.IsRenderRequestSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera to verify if it supports this render request. |
| data | The render request to verify if the render pipeline supports it. |

### Returns

**bool** `true` if the combination of the camera and the render pipeline supports the `RequestData` type.

### Description

Implement this method in a custom Scriptable Render Pipeline (SRP) to specify if a particular combination of camera and render request is supported.

In a custom Scriptable Render Pipeline (SRP), you need to implement this method to specify supported `RequestData` types. RenderPipeline.SupportsRenderRequest calls this method.

See also: RenderPipeline.SubmitRenderRequest, StandardRequest.
