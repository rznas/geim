<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.GetControlRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hasLabel | Optional boolean to specify if the control has a label. Default is true. |
| height | The height in pixels of the control. Default is EditorGUIUtility.singleLineHeight. |
| style | Optional GUIStyle to use for the control. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`. Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Get a rect for an Editor control.

When creating a new Editor control it is a sound design to implement the actual control without relying on GUILayout and instead have the control take a Rect as parameter, similar to the controls in the EditorGUI class. This ensures the control can also be used in for example a PropertyDrawer, which does not allow GUILayout.

Once a non-layout version of the control is implemented, a layout version can easily be made as well, which simply calls into the non-layout version. In order to get a rect fitting for the control, the GetControlRect function can be used.
