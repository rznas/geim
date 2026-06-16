<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.CanBeParent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| item | Can this item be a parent? |

### Description

Override this method to control which items are allowed to be parents.

This is called internally by the TreeView to determine dragging behavior. For list views this function should just return false to prevent any reparenting.
Default behavior: returns true.
