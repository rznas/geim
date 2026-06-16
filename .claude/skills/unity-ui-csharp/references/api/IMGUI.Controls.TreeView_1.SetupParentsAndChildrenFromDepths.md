<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.SetupParentsAndChildrenFromDepths.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The hidden root item. |
| rows | TreeViewItems where only the depth property have been set. |

### Description

Utility method for initializing all the parent and children properties of the rows using the order and the depths values that have been set.

Some tree data models are based on order and depth information only. This method can be called after creating all the rows to initalize the ‘parent’ and ‘children’ properties for each TreeViewItem in ‘rows’ based on the depth information for each item. This method assumes that the data presented in `rows` is in the order it should appear from top to bottom in the TreeView.

Additional resources: SetupDepthsFromParentsAndChildren, BuildRoot.
