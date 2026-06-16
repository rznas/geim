<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.HandleDragAndDrop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| args | Drag and drop arguments. |

### Description

Override this function to control the drag and drop behavior of the TreeView.

This function is called continously when a drag and drop operation is active and the cursor is over the TreeView. Note that the drag and drop operation can have been initiated outside the TreeView.

Use the state in DragAndDrop to determine the objects for the drag and drop. This function returns a DragAndDropVisualMode value that controls the cursor state.

You control TreeView drag and drop in the following order:
 1) override CanStartDrag to enable dragging TreeViewItems.
 2) override SetupDragAndDrop to set which TreeViewItems are dragged.
 3) override HandleDragAndDrop to control the drag and drop behavior of the TreeView.
