<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSnapSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control the behavior of handle snapping in the editor.

### Static Properties

| Property | Description |
| --- | --- |
| angleSnapEnabled | Gets or sets the enabled or disabled status of incremental angle snapping. |
| gridPosition | Gets or sets the position of the grid. |
| gridRotation | Gets or sets the rotation of the grid. |
| gridSize | Gets or sets the grid size used for snapping. |
| gridSnapActive | Gets whether grid snapping is active. |
| gridSnapEnabled | Gets or sets whether grid snapping is enabled. |
| incrementalSnapActive | Gets whether increment snapping is active. |
| move | Gets or sets the increment that translation handles snap to. |
| rotate | Gets or sets the increment that rotation handles snap to. |
| scale | Gets or sets the increment value that the scale handles snap to. |
| scaleSnapEnabled | Gets or sets the enabled or disabled status of incremental scale snapping. |
| snapEnabled | Gets or sets whether snapping is enabled. |

### Static Methods

| Method | Description |
| --- | --- |
| ResetSnapSettings | Resets EditorSnap settings to default values. |

### Events

| Event | Description |
| --- | --- |
| angleSnapEnabledChanged | A callback that is triggered when the `angleSnapEnabled` value changes. |
| gridSnapEnabledChanged | Callback triggered when the grid snap enabled value changes. |
| scaleSnapEnabledChanged | A callback that is triggered when the `scaleSnapEnabled` value changes. |
| snapEnabledChanged | Calls the methods in its invocation list when the snapEnabled value changes . |
