<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchMonitor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The search monitor is responsible to track any changes that occurs in Unity in order to update search indexes or other search data structure at runtime.

### Static Properties

| Property | Description |
| --- | --- |
| pending | Indicates if the changes still need to be processed by the search backend. |

### Static Methods

| Method | Description |
| --- | --- |
| GetDiff | Returns the assets that changed since a point in time. |
| GetView | Returns a SearchMonitorView to access Search's main PropertyDatabases. |
| RaiseContentRefreshed | Mark content to be refreshed. |
| Reset | Reset the search property database content, invalidating all caches. |

### Events

| Event | Description |
| --- | --- |
| contentRefreshed | Event invoked when some content has changed. |
| documentsInvalidated | Event raised when documents get invalidated. |
| objectChanged | Event raised when an UnityEngine.Object changed. |
| sceneChanged | Event raised when the current loaded scene changes that might affect search results. |
