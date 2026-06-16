<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MultiColumnTreeView-sortingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates how to sort columns. To enable sorting, set it to ColumnSortingMode.Default or ColumnSortingMode.Custom. The `Default` mode uses the sorting algorithm provided by MultiColumnController, acting on indices. You can also implement your own sorting with the `Custom` mode, by responding to the columnSortingChanged event.

**Note**: If there is at least one sorted column, reordering is temporarily disabled.
