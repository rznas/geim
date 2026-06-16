<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorCameraUtils.GetRenderersHiddenResultBits.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rendererIDs | The span of renderer instance IDs to check. |
| resultBits | The span of visibility statuses the method returns. If a bit is set to one, the corresponding renderer in the `rendererIDs` parameter is not visible in the scene view. The length of the span must be `(rendererIDs.Length + 63) / 64`. Otherwise an exception will be thrown. |

### Description

Gets the scene visibility status of renderers.

Refer to SceneVisibility for more information about scene visibility.
