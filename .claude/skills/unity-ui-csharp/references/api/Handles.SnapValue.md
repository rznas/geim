<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.SnapValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The value to snap. |
| snap | The increment to snap to. |

### Returns

**float** If (refer to EditorSnapSettings.incrementalSnapActive) is active, rounds `value` to the closest multiple of `snap` (snap can only be positive).

### Description

Rounds `value` to the closest multiple of `snap` if snapping is active (refer to EditorSnapSettings.incrementalSnapActive). Note that snap can only be positive.

### Parameters

| Parameter | Description |
| --- | --- |
| value | The value to snap. |
| snap | The increment to snap to. |

### Returns

**Vector3** If snapping is active, rounds `value` to the closest multiple of `snap` (snap can only be positive).

### Description

Rounds `value` to the closest multiple of `snap` if snapping is active. Note that snap can only be positive.

### Parameters

| Parameter | Description |
| --- | --- |
| value | The value to snap. |
| snap | The increment to snap to. |

### Returns

**Vector2** If snapping is active, rounds `value` to the closest multiple of `snap` (snap can only be positive).

### Description

Rounds `value` to the closest multiple of `snap` if snapping is active. Note that snap can only be positive.
