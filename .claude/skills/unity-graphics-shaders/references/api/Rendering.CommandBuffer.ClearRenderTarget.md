<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.ClearRenderTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clearDepth | Whether to clear both the depth buffer and the stencil buffer. |
| clearColor | Whether to clear the color buffer. |
| clearFlags | Which render targets to clear, defined using a bitwise OR combination of RTClearFlags values. |
| backgroundColor | Color to clear with. All color targets specified in `clearFlags` are cleared to this color. |
| backgroundColors | Colors to clear with. If a subset of all color targets is selected using `clearFlags` then this array should be densely packed and its length should be equal to the total number of color targets selected. |
| depth | Depth to clear with (default is 1.0). |
| stencil | Stencil to clear with (default is 0). |

### Description

Adds a "clear render target" command.
