<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.CanChangeExpandedState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| item | Can this item be expanded/collapsed. |

### Description

Override this method to control whether an item can be expanded or collapsed by key or mouse.

If this method returns false the foldout arrow for an item will not be shown. Default behavior: if a search is active this method returns false (for search results, no foldout is required since the the results are shown as a flat list). If no search is active then by default it returns true if the item has any children, and false if it has no children.
