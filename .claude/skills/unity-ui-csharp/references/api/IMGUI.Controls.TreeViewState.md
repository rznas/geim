<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeViewState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TreeViewState contains serializable state information for the TreeView.

This is primarily state that the user could have changed by interacting with the TreeView, for example the selection state, expanded state, navigation state and scroll state.

The TreeViewState is the only state that should be serialized/deserialized in the TreeView. The TreeView itself is not serializable and should be reconstructed from the tree data it is representing.

All the state contained in this class is updated by the TreeView itself. Access to this state can also be done through the TreeView API.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| expandedIDs | This is the list of currently expanded TreeViewItem IDs. |
| lastClickedID | The ID for the TreeViewItem that currently is being used for multi selection and key navigation. |
| scrollPos | The current scroll values of the TreeView's scroll view. |
| searchString | Search string state that can be used in the TreeView to filter the tree data when creating the TreeViewItems. |
| selectedIDs | Selected TreeViewItem IDs. Use of the SetSelection and IsSelected API will access this state. |
