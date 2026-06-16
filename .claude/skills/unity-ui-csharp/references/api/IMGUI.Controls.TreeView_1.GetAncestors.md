<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.GetAncestors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | TreeViewItem ID. |

### Returns

**IList<TIdentifier>** List of all the ancestors of a given item with ID id.

### Description

This method is e.g. used for revealing items that are currently under a collapsed item.

It is called automatically from TreeView methods such as RevealItem. If the full item tree have not been built in BuildRoot(), you should override this method to use your backend data to find the correct ancestors for the given item otherwise RevealItem will fail.

Default behavior: The item with ID id is found by searching from the rootItem through all its descendants. Once found, its parent and its parent’s parent, etc. are collected as ancestors. This efault behavior assumes the full tree has been built.

Additional resources: GetDescendantsThatHaveChildren.
