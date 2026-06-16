<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility class for making new GUI controls.

Unless you are creating your own GUI controls from scratch, you should not use these functions.

### Static Properties

| Property | Description |
| --- | --- |
| hasModalWindow | A global property, which is true if a ModalWindow is being displayed, false otherwise. |
| hotControl | The controlID of the current hot control. |
| keyboardControl | The controlID of the control that has keyboard focus. |
| systemCopyBuffer | Get access to the system-wide clipboard. |

### Static Methods

| Method | Description |
| --- | --- |
| AlignRectToDevice | Align a local space rectangle to the pixel grid. |
| ExitGUI | Puts the GUI in a state that will prevent all subsequent immediate mode GUI functions from evaluating for the remainder of the GUI loop by throwing an ExitGUIException. |
| GetControlID | Get a unique ID for a control. |
| GetStateObject | Get a state object from a controlID. |
| GUIToScreenPoint | Convert a point from GUI position to screen space. |
| GUIToScreenRect | Convert a rect from GUI position to screen space. |
| QueryStateObject | Get an existing state object from a controlID. |
| RotateAroundPivot | Helper function to rotate the GUI around a point. |
| ScaleAroundPivot | Helper function to scale the GUI around a point. |
| ScreenToGUIPoint | Convert a point from screen space to GUI position. |
| ScreenToGUIRect | Convert a rect from screen space to GUI position. |
