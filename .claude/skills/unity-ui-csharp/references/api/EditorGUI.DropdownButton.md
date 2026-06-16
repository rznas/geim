<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DropdownButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the button. |
| content | Text, image and tooltip for this button. |
| focusType | Whether the button should be selectable by keyboard or not. |
| style | Optional style to use. |

### Returns

**bool** `true` when the user clicks the button.

### Description

Makes a button that reacts to mouse down, for displaying your own dropdown content.

This control does not do anything but returns true on mouse down when clicked, as opposed to regular buttons that return true on mouse up.

This can be used for buttons that should open a GenericMenu or your own custom EditorWindow in dropdown form.

When used with a GenericMenu, use GenericMenu.Dropdown and pass the same rect to the method as was used for the button position.

When used with a custom EditorWindow, use EditorWindow.ShowAsDropdown and pass the same rect to the method as was used for the button position.
