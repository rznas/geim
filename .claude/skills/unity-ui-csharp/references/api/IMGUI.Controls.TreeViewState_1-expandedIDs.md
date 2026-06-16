<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeViewState_1-expandedIDs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is the list of currently expanded TreeViewItem IDs.

This state is maintained by the TreeView when the user interacts with the TreeView and when using the API. The TreeView assumes the list is sorted. So if setting this directly ensure to to sort the list afterwards: expandedIDs.Sort(); It is recommended to use the TreeView<T0>.SetExpanded instead which automatically handles this.
