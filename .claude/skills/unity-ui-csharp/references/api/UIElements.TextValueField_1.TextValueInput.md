<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TextValueField_1.TextValueInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is the inner representation of the Text input.

### Properties

| Property | Description |
| --- | --- |
| allowedCharacters | Method to override to indicate the allowed characters in the actual field. |
| formatString | Formats the string. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyInputDeviceDelta | Called when the user is dragging the label to update the value contained in the field. |
| StartDragging | Method called by the application when the label of the field is started to be dragged to change the value of it. |
| StopDragging | Method called by the application when the label of the field is stopped to be dragged to change the value of it. |

### Protected Methods

| Method | Description |
| --- | --- |
| StringToValue | Converts a string to a value type. |
| ValueToString | Convert the value to string for visual representation. |
