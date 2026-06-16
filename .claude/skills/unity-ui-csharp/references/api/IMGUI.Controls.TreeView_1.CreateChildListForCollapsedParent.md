<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.CreateChildListForCollapsedParent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a dummy TreeViewItem list. Useful when overriding BuildRows to prevent building a full tree of items.

When building the rows in BuildRows, it is not necessary to create items for descendants of collapsed items because these descendants are not visible. This can be a useful optimization, particularly in large trees or trees that change often. However, collapsed items still require a foldout arrow to be shown to indicate the presence of children. This is achieved by creating a dummy list and assigning it to the TreeViewItem.children property of the collapsed parent TreeViewItem.

Additional resources: BuildRows. IsChildListForACollapsedParent.
