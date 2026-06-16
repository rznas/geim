<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchColumnEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search column event arguments are used by SearchColumn.getter, SearchColumn.drawer and SearchColumn.setter delegates.

### Properties

| Property | Description |
| --- | --- |
| column | Search column being handled by the current event. |
| context | Search context being used for the current event. |
| focused | Indicates if the search column cell is currently focused. |
| item | Search item currently being used for the event. |
| multiple | Indicates if multiple search results are currently selected when processing the current event. |
| rect | UnityEngine.Rect used to indicate the drawing boudaries of the SearchColumn.drawer event. |
| selected | Indicates if the search result is currently selected. |
| value | Value obtained from SearchColumn.getter before calling SearchColumn.drawer. |
