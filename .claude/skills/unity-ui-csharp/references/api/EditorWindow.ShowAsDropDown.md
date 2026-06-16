<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.ShowAsDropDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buttonRect | The button from which the position of the window will be determined (see description). |
| windowSize | The initial size of the window. |

### Description

Shows a window with dropdown behaviour and styling.

The window is styled in the same way as a PopupWindow. The window is automatically closed when it loses focus. Note this function auto-fits the window to screen while trying to place it first below then above the button it was triggered from. This means the windowSize might change when fitting it to screen, so you should make sure you read the 'position' afterwards to check whether the size was cropped.
