<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.PrepareRendererListsAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rendererLists | The list of RendererList objects to prepare for rendering. |

### Description

Starts to process the provided RendererLists in the background.

With this command, an application can manually start the batch processing and filtering of the visible GameObjects. It is an asynchronous operation and the control returns immediately to the application. To check the status for each RendererList, use ScriptableRenderContext.QueryRendererList.

If you do not use this command, then the batch processing of RendererLists begins with ScriptableRenderContext.Submit. By using this command, the application can start the processing of a number of RendererLists manually at the beginning of a frame, before recording any other rendering commands. This enables RendererList processing to overlap with other work, which improves performance.

Furthermore, by using the ScriptableRenderContext.QueryRendererListStatus command, the application can get information about the type of visible objects in the scene and optimize rendering accordingly (for example by skipping a color pyramid generation pass if no objects with distortion are visible).
