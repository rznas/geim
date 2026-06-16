<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.SetupDragAndDrop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when CanStartDrag returns true.

Override this function to set the global DragAndDrop state and set which items can be dragged and dropped. Use FindRows to convert the dragged IDs to TreeViewItems if needed.

You control TreeView drag and drop in the following order:
 1) override CanStartDrag to enable dragging TreeViewItems.
 2) override SetupDragAndDrop to set which TreeViewItems are dragged.
 3) override HandleDragAndDrop to control the drag and drop behavior of the TreeView.


Additional resources: DragAndDrop.
