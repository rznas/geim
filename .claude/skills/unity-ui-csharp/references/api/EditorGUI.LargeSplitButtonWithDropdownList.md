<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.LargeSplitButtonWithDropdownList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| content | Text, image and tooltip the button displays. |
| buttonNames | The list of options in the dropdown menu. |
| callback | The callback to fire when a dropdown menu item is selected. |
| disableMainButton | Whether to disable the button. The default value is `false`. |

### Returns

**bool** `true` when the user clicks the button.

### Description

Creates a large button that contains a regular button section and an arrow to open a dropdown menu.

When the user selects the button section the method returns true. When the user selects the dropdown arrow a dropdown menu appears. When the user selects an item in the dropdown menu, `callback` is fired with the selected menu item as input.
