<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.SearchField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The SearchField control creates a text field for a user to input text that can be used for searching.

It comes in two UI styles: one for normal usage and one for toolbars.

### Properties

| Property | Description |
| --- | --- |
| autoSetFocusOnFindCommand | Changes the keyboard focus to the search field when the user presses ‘Ctrl/Cmd + F’ when set to true. It is true by default. |
| searchFieldControlID | This is the controlID used for the text field to obtain keyboard focus. |

### Public Methods

| Method | Description |
| --- | --- |
| HasFocus | This function returns true if the search field has keyboard focus. |
| OnGUI | This function displays the search field with the default UI style and uses the GUILayout class to automatically calculate the position and size of the Rect it is rendered to. Pass an optional list to specify extra layout properties. |
| OnToolbarGUI | This function displays the search field with the toolbar UI style and uses the GUILayout class to automatically calculate the position and size of the Rect it is rendered to. Pass an optional list to specify extra layout properties. |
| SetFocus | This function changes keyboard focus to the search field so a user can start typing. |

### Events

| Event | Description |
| --- | --- |
| downOrUpArrowKeyPressed | This event is dispatched when the focused search field detects that the down or up key is pressed and can be used to change keyboard focus to another control, such as the TreeView. |

### Delegates

| Delegate | Description |
| --- | --- |
| SearchFieldCallback | This is a generic callback delegate for SearchField events and does not take any parameters. |
