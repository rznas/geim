<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorCameraUtils.GetRenderersFilteringResults.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rendererIDs | Span containing Renderers' instance IDs. |
| results | Output Span. If an element is `true`, it indicates that the Renderer element of the input aray should be rendered under the current SceneView scene filtering settings. |

### Description

Returns the SceneView scene filtering results for a specified NativeArray of Renderer instance IDs.

This function retrieves the SceneView scene filtering results for a group of Renderers.
