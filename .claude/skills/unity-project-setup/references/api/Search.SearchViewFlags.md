<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search view flags used to open the Object Picker in various states.

### Properties

| Property | Description |
| --- | --- |
| None | The Search Picker window will be opened using default options. |
| Debug | The Search Picker window reports debugging information while running queries. |
| NoIndexing | The Search Picker window will ignore any indexed search entry while executing the search query. |
| Packages | The Search Picker window will include results from packages. |
| OpenLeftSidePanel | The Search Picker window will open with the Saved Searches panel open. |
| OpenInspectorPreview | The Search Picker window will open with the Preview Inspector open. |
| Centered | The Object Picker window will open centered in the main Editor window. |
| HideSearchBar | The Search Picker window will hide the Search field. This means the user will not be able to edit the initial search query used to open the Search window. |
| CompactView | The Object Picker window will open in compact list view. |
| ListView | The Search Picker window will open in list view. |
| GridView | The Search Picker window will open in grid view. |
| TableView | The Search Picker window will open in table view. |
| EnableSearchQuery | This flag enables the use of the Saved Searches workflow in the Search Picker window. |
| DisableInspectorPreview | This flag disables the use of the Inspector Preview in the Search Picker window. |
| DisableSavedSearchQuery | When creating a new search window, this flag can be used to disable the saved search query side panel. |
| OpenInBuilderMode | This flag forces the picker to open in builder mode. |
| OpenInTextMode | This flag forces the picker to open in text mode. |
| DisableBuilderModeToggle | This flag disables the ability to switch between text mode and builder mode. |
| Borderless | Opens a search window without any borders. This is useful to open the search window as a popup window for a quick pick. |
| DisableQueryHelpers | No query helper page will show up if the search query text is empty and no result is yielded. |
| DisableNoResultTips | When no results are yielded by a query, do not display the no result tips page. |
| IgnoreSavedSearches | This flag ensure the previous search text from previous Search Window usage won't be restored. Thus the search window will always open with empty search text. |
| ObjectPicker | This flags tells that the search window needs to be shown as an Object Picker. By default we show the picker with a limited UI. |
| ObjectPickerAdvancedUI | If the ObjectPicker flag is used, it tells the system to show the Object Picker Window using the full Search Window UI. |
