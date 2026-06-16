<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.GetPropertyHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| property | Height of the property area. |
| label | Descriptive text or image. |
| includeChildren | Should the returned height include the height of child properties? |

### Description

Get the height needed for a PropertyField control.

The height is based on the type of the SerializedProperty, and inclues the height of all expanded children if the includeChildren parameter is set to true, which is the default. If the property has a custom PropertyDrawer, the function will return the height returned by that drawer. The includeChildren parameter is ignored in that case, as PropertyDrawers always include children.
