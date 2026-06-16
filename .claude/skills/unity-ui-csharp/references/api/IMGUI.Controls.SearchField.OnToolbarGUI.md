<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.SearchField.OnToolbarGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Text string to display in the search field. |
| options | An optional list of layout options that specify extra layout properties.   Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**string** The text entered in the search field. The original input string is returned instead if the search field text was not changed.

### Description

This function displays the search field with the toolbar UI style and uses the GUILayout class to automatically calculate the position and size of the Rect it is rendered to. Pass an optional list to specify extra layout properties.

### Parameters

| Parameter | Description |
| --- | --- |
| rect | Rectangle to use for the search field. |
| text | Text string to display in the search field. |

### Returns

**string** The text entered in the search field. The original input string is returned instead if the search field text was not changed.

### Description

This function displays the search field with a toolbar style in the given Rect.
