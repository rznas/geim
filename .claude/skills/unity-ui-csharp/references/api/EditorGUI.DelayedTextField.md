<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DelayedTextField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the text field. |
| label | Optional label to display in front of the int field. |
| text | The value to edit. |
| style | Optional GUIStyle. |

### Returns

**string** The value entered by the user. Note that the return value will not change until the user has pressed enter or focus is moved away from the text field.

### Description

Makes a delayed text field.

Similar to EditorGUI.TextField but will not return the new value until the user has pressed enter or focus is moved away from the text field.

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the text field. |
| property | The text property to edit. |
| label | Optional label to display in front of the int field. Pass GUIContent.none to hide label. |

### Description

Makes a delayed text field.

Similar to EditorGUI.TextField but will not return the new value until the user has pressed enter or focus is moved away from the text field.
