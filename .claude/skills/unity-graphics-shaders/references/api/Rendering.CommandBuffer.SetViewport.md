<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetViewport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pixelRect | Viewport rectangle in pixel coordinates. |

### Description

Add a command to set the rendering viewport.

By default after render target changes the viewport is set to encompass the whole render target. This command can be used to limit further rendering to the specified pixel rectangle.

Additional resources: SetRenderTarget.
