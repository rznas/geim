<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.CanStartDrag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called whenever a TreeViewItem is clicked and dragged. It returns false by default.

Override this function so it returns true to enable drag and drop behavior for TreeViewItems.

You control TreeView drag and drop in the following order:
 1) override CanStartDrag to enable dragging TreeViewItems.
 2) override SetupDragAndDrop to set which TreeViewItems are dragged.
 3) override HandleDragAndDrop to control the drag and drop behavior of the TreeView.
