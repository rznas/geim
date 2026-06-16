<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchMonitorView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scoped search monitor view.

This struct provides a view on Search's main PropertyDatabases. Search offers some convenient PropertyDatabases to cache data. If this data comes from scenes or assets, those will be invalidated automatically whenever the scene or asset changes. If it comes from another source, you need to manage the invalidation process yourself with Invalidate and InvalidateDocument.

### Public Methods

| Method | Description |
| --- | --- |
| Invalidate | Mark a document property to be invalided. |
| InvalidateDocument | Mark a document to be invalidated. |
| StoreAlias | Store a property alias in the property string table. |
| StoreProperty | Store a property value. |
| TryLoadAlias | Gets a property alias if any. |
| TryLoadProperty | Loads a property if any. |
