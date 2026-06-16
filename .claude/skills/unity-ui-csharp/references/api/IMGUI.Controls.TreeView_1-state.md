<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1-state.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The state of the TreeView (expanded state, selection, scroll etc.)

The TreeViewState contains state information that the user could have changed, for example the selection state, expanded state, and scroll state. The TreeViewState is the only state that should be serialized/deserialized in the TreeView. This object is passed in when creating the TreeView and it is up to the client of the TreeView to decide how it should be persisted. For Editor windows it will usually be a serialized field in the window. The TreeView changes the state in this object when the user interacts with the TreeView.
