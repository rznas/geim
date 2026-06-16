<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipeline.IsPreviewSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The camera to check if it is compatible with preview. |
| reason | The reason why it is not compatible. This message will be displayed instead of the preview in the Preview widget in the scene. |

### Returns

**bool** If false, the preview is forbidden for this camera.

### Description

Allow to specify if a camera can be previewed or not.

Preview are done with the SceneView's preview widget. When selecting a camera to preview, this method will be called to determine if the camera is previewable or not. The default implementation of this method consider every camera is previewable, but it may not be the case for the custom RenderPipeline you write on your own. If it is the case, override this method.
