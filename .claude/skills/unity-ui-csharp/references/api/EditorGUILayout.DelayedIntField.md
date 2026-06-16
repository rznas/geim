<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.DelayedIntField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label to display in front of the int field. |
| value | The value to edit. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**int** The value entered by the user. Note that the return value will not change until the user has pressed enter or focus is moved away from the int field.

### Description

Make a delayed text field for entering integers.

Similar to EditorGUILayout.IntField but will not return the new value until the user has pressed enter or focus is moved away from the int field.

### Parameters

| Parameter | Description |
| --- | --- |
| property | The int property to edit. |
| label | Optional label to display in front of the int field. Pass GUIContent.none to hide label. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Make a delayed text field for entering integers.

Similar to EditorGUILayout.IntField but will not return the new value until the user has pressed enter or focus is moved away from the int field.
