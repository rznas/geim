<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DelayedDoubleField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the double field. |
| label | Optional label to display in front of the double field. |
| value | The value to edit. |
| style | Optional GUIStyle. |

### Returns

**double** The value entered by the user. Note that the return value will not change until the user has pressed enter or focus is moved away from the double field.

### Description

Makes a delayed text field for entering doubles.

Similar to EditorGUI.DoubleField but will not return the new value until the user has pressed enter or focus is moved away from the double field.

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the double field. |
| property | The double property to edit. |
| label | Optional label to display in front of the double field. Pass GUIContent.none to hide label. |

### Description

Makes a delayed text field for entering doubles.

Similar to EditorGUI.DoubleField but will not return the new value until the user has pressed enter or focus is moved away from the double field.
