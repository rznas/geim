<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeViewItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TreeViewItem is used to build the tree representation of a tree data structure.

The TreeViewItem can be derived from to add custom data.

Additional resources: TreeView.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| children | The list of child items of this TreeViewItem. |
| depth | The depth refers to how many ancestors this item has, and corresponds to the number of horizontal ‘indents’ this item has. |
| displayName | Name shown for this item when rendered. |
| hasChildren | Returns true if children has any items. |
| icon | If set, this icon will be rendered to the left of the displayName. The icon is rendered at 16x16 points by default. |
| id | Unique ID for an item. |
| parent | The parent of this TreeViewItem. If it is null then it is considered the root of the TreeViewItem tree. |

### Public Methods

| Method | Description |
| --- | --- |
| AddChild | Helper method that adds the child TreeViewItem to the children list and sets the parent property on the child. |
