<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.SelectionClick.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| item | TreeViewItem clicked. |
| keepMultiSelection | If true then keeps the multiselection when clicking on a item already part of the selection. If false then clears the selection before selecting the item clicked. For left button clicks this is usually false. For context clicks it is usually true so a context opereration can operate on the multiselection. |

### Description

Use this method in RowGUI to peform the logic of a mouse click.

This method handles multi-selection when using modifier keys together with the mouse click. It is called automatically if the event is not used by the RowGUI method.
