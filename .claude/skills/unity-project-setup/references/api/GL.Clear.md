<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.Clear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clearDepth | Should the depth buffer be cleared? |
| clearColor | Should the color buffer be cleared? |
| backgroundColor | The color to clear with, used only if `clearColor` is `true`. |
| depth | The depth to clear the z-buffer with, used only if `clearDepth` is `true`. The valid range is from 0 (near plane) to 1 (far plane). The value is graphics API agnostic: the abstraction layer will convert the value to match the convention of the current graphics API. |

### Description

Clear the current render buffer.

This clears the screen or the active RenderTexture you are drawing into. The cleared area is limited by the active viewport. This operation might alter the model/view/projection matrices.

In most cases, a Camera will already be configured to clear the screen or RenderTexture and you will not need to perform this operation manually.

Additional resources: GL.ClearWithSkybox.
