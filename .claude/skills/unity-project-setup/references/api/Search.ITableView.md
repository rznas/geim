<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ITableView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Table view interface.

### Properties

| Property | Description |
| --- | --- |
| context | Returns the search context driving the table view. |
| readOnly | Invoked to check if the table view is read-only. |

### Public Methods

| Method | Description |
| --- | --- |
| AddColumn | Invoked when the table view need to add a new column at a specific location. |
| AddColumns | Invoked when a set of columns are inserted. |
| GetColumns | Invoked when the table needs to get the list of columns to be displayed. |
| GetElements | Invoked when the property table needs all view elements not necessarily sorted. |
| GetRows | Invoked when the property table needs all search items sorted. |
| GetSearchTable | Invoked to get the table configuration. |
| OnItemExecuted | Invoked when the user double click on a search item row. |
| OpenContextualMenu | Invoked when the user opens a contextual menu on the selected search item row. |
| RemoveColumn | Invoked when a column gets removed. |
| SetDirty | Invoked when the table view gets dirty. |
| SetSelection | Invoked when the table view selection has changed. |
| SetupColumns | Invoked when columns are being intialized. |
| SwapColumns | Invoked when two columns are being swapped. |
