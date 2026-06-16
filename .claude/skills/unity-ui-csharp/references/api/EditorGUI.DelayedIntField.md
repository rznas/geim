<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DelayedIntField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the int field. |
| label | Optional label to display in front of the int field. |
| value | The value to edit. |
| style | Optional GUIStyle. |

### Returns

**int** The value entered by the user. Note that the return value will not change until the user has pressed enter or focus is moved away from the int field.

### Description

Makes a delayed text field for entering integers.

Similar to EditorGUI.IntField but will not return the new value until the user has pressed enter or focus is moved away from the int field.

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the int field. |
| property | The int property to edit. |
| label | Optional label to display in front of the int field. Pass GUIContent.none to hide label. |

### Description

The value entered by the user. Note that the return value will not change until the user has pressed enter or focus is moved away from the int field.

Similar to EditorGUI.IntField but will not return the new value until the user has pressed enter or focus is moved away from the int field.
