<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.SnapScaleValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The scale value to snap. |
| snap | A custom scale increment to snap to. |

### Returns

**float** If EditorSnapSettings.scaleSnapEnabled is enabled, rounds `value` to the closest multiple of `snap` (snap can only be positive), or to the closest multiple of EditorSnapSettings.scale when no `snap` value is specified.

### Description

Rounds the scale `value` to the closest snapping multiple if scale snapping is active (refer to EditorSnapSettings.scaleSnapEnabled).

This method directly uses the value specified by EditorSnapSettings.scale to round `value`. If you want to use a custom snap value, use the additional `snap` parameter. Note that snap can only be positive.
