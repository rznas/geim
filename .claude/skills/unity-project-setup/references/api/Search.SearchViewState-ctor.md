<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewState-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Initial search context. |
| flags | Initial search view flags. |

### Description

Create search view flags used to create a new Search window.

See SearchService.ShowWindow.

### Parameters

| Parameter | Description |
| --- | --- |
| context | Initial search context. |
| tableConfig | Initial search table configuration. |
| flags | Initial search view flags. |

### Description

Creates a search view that will be opened in table view.

### Parameters

| Parameter | Description |
| --- | --- |
| context | Initial search context. |
| selectObjectHandler | Handler executed when the user has selected an object. |
| trackingObjectHandler | Handler executed when the user clicks on an item in the search view. |
| typeName | String type name used to filter items in the search results. This parameter can be defined if the concrete Type cannot be accessed. |
| filterType | Concrete type used to filter items in the search results. |

### Description

Creates a search view state that will be used to open a search picker using SearchService.ShowPicker.

### Parameters

| Parameter | Description |
| --- | --- |
| context | Initial search context. |
| selectHandler | Handler executed when the user has selected an search result. |

### Description

Creates a search view state that will be used to open a search picker using SearchService.ShowPicker.
