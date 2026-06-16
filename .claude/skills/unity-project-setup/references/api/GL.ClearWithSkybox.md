<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.ClearWithSkybox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clearDepth | Should the depth buffer be cleared? |
| camera | Camera to get projection parameters and skybox from. |

### Description

Clear the current render buffer with camera's skybox.

This draws skybox into the screen or the active RenderTexture. If the passed camera does not have custom Skybox component, the global skybox from RenderSettings will be used.

Additional resources: GL.Clear.
