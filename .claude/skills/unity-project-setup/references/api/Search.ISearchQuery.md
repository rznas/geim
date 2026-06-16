<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchQuery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This search query interface is used when handling search query objects. These can be either assets saved in the user project or saved in the user preferences.

### Properties

| Property | Description |
| --- | --- |
| creationTime | Indicates the binary long time of when the search query was created. |
| details | Search query description. |
| displayName | Search query display name used in the UI. |
| filePath | Indicates where the search query is saved on disk. |
| guid | Unique GUID of the search query. |
| isSearchTemplate | Indicates if the search query is displayed as a search template in the search view home page. |
| itemCount | Provides a preview of how many results this query might yield if executed. |
| lastUsedTime | Indicates the last time the query was executed. |
| searchText | Search query text. |
| thumbnail | Search query icon thumbnail set by the user if any. |

### Public Methods

| Method | Description |
| --- | --- |
| GetName | Returns the formatted name of the query depending on its source. |
| GetProviderIds | Returns the list of provider ids that search query is executed with. |
| GetProviderTypes | Returns the list of aggregated type ids the search query executes with. |
| GetSearchTable | Returns the query search table configuration if any. |
| GetViewState | Returns the search query view state. |
