<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.ShowObjectPicker.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| selectHandler | Callback to trigger when a user selects an item. |
| trackingHandler | Callback to trigger when the user is modifying a Search selection (i.e. tracking the currently selected item). |
| searchText | Initial search text. |
| typeName | Type name of the object to select. Can be used to replace filterType. |
| filterType | Type of the object to select. |
| defaultWidth | Initial width of the window. |
| defaultHeight | Initial height of the window. |
| flags | Options defining how the query is performed. |

### Returns

**ISearchView** Returns the search view window instance.

### Description

Open a Search Picker window for Unity objects.

Use Search as an object picker to select any Unity object based on the specified filter type. For a more generic picker, please use SearchService.ShowPicker.
