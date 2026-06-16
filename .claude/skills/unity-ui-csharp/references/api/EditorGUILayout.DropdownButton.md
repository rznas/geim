<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.DropdownButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| content | Text, image and tooltip for this button. |
| focusType | Whether the button should be selectable by keyboard or not. |
| style | Optional style to use. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**bool** `true` when the user clicks the button.

### Description

Make a button that reacts to mouse down, for displaying your own dropdown content.

This control does not do anything but returns true on mouse down when clicked, as opposed to regular buttons that return true on mouse up.

This can be used for buttons that should open a GenericMenu or your own custom EditorWindow in dropdown form.

When used with a GenericMenu, use GenericMenu.Dropdown and pass the same rect to the method as was used for the button, which you can obtain using GUILayoutUtility.GetLastRect. Note that this will only return a valid rect when EditorGUILayout.DropdownButton returns false. This happens because the last layout event is not used when the click goes through to open a menu.

When used with a custom EditorWindow, use EditorWindow.ShowAsDropdown and pass the same rect to the method as was used for the button, which you can obtain using GUILayoutUtility.GetLastRect.
