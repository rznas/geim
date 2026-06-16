<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PivotManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manages pivot mode, rotation, and other configurable settings of editor pivots.

### Static Properties

| Property | Description |
| --- | --- |
| defaultPivotModeType | The type of the default built-in pivot mode used during initialization and as a fallback when no other mode is set or valid. |
| defaultPivotRotationType | The type of the default built-in pivot rotation type used during initialization and as a fallback when no other rotation is set or valid. |

### Static Methods

| Method | Description |
| --- | --- |
| GetActivePivotMode | Gets the currently active pivot mode. |
| GetActivePivotRotation | Gets the currently active pivot rotation. |
| SetActivePivotMode | Sets the active pivot mode to the specified type. |
| SetActivePivotRotation | Sets the active pivot rotation to the specified type. |

### Events

| Event | Description |
| --- | --- |
| activePivotModeChanged | Raised when the active pivot mode changes. |
| activePivotRotationChanged | Raised when the active pivot rotation changes. |
