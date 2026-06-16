<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.SnapAngleValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The angle value to snap. |
| snap | The custom angle increment to snap to. |

### Returns

**float** If EditorSnapSettings.angleSnapEnabled is enabled, rounds `value` to the closest multiple of `snap` (snap can only be positive), or to the closest multiple of EditorSnapSettings.rotate when no `snap` value is specified.

### Description

Rounds the angle `value` to the closest multiple if angle snapping is active (refer to EditorSnapSettings.angleSnapEnabled).

This method directly uses the value specified by EditorSnapSettings.rotate to round `value`. If you want to use a custom snap value, use the additional `snap` parameter. Note that snap can only be positive.
