<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewState.CreatePickerState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | Title of the picker window. |
| context | SearchContext used to setup whcih SearchProvider and initial query are setup for this Picker. |
| selectObjectHandler | Selector Callback. |
| trackingObjectHandler | Callbacks triggeeds when the select selects an item. |
| typeName | Name of the type of assets or components we want to pick. |
| filterType | Type of the items we want to pick. |
| flags | Flags specifying how the picker view should be displayed. |
| selectHandler | Selector Callback. |
| trackingHandler | Callbacks triggeeds when the select selects an item. |
| filterHandler | Filtering calback. |

### Returns

**SearchViewState** Returns a view state use to open an Object picker.

### Description

Create a SearchViewState specially setup to show an Object Picker.
