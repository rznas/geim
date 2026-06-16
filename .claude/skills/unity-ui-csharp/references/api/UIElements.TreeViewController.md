<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TreeViewController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tree view controller. View controllers of this type are meant to take care of data virtualized by any TreeView inheritor.

### Properties

| Property | Description |
| --- | --- |
| treeView | View for this controller, cast as a TreeView. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| baseTreeView | View for this controller, cast as a BaseTreeView. |
| itemsSource | Items for this tree. |
| view | The view for this controller. |

### Public Methods

| Method | Description |
| --- | --- |
| CanChangeExpandedState | Determines whether the item with the specified ID can be expanded or collapsed. |
| CollapseAll | Collapses all items in the tree and refreshes the view. |
| CollapseItem | Collapses the item with the specified ID, hiding its children. Allows to collapse the whole hierarchy under that item. |
| CollapseItemByIndex | Collapses the item with the specified index, hiding its children. Allows to collapse the whole hierarchy under that item. |
| Exists | Checks if an ID exists within this tree. |
| ExpandAll | Expands all items in the tree and refreshes the view. |
| ExpandItem | Expands the item with the specified ID, making its children visible. Allows to expand the whole hierarchy under that item. |
| ExpandItemByIndex | Expands the item with the specified index, making his children visible. Allows to expand the whole hierarchy under that item. |
| GetAllItemIds | Returns all item IDs that can be found in the tree, optionally specifying root IDs from where to start. |
| GetChildIndexForId | Gets the child index under the parent of the item with the specified ID. |
| GetChildrenIds | Get all children of a specific ID in the tree. |
| GetChildrenIdsByIndex | Gets the children IDs of the item with the specified index. |
| GetIdForIndex | Returns the ID for a specified index in the visible items source. |
| GetIndentationDepth | Returns the depth of the element at that ID. |
| GetIndentationDepthByIndex | Return the depth of the element at that index. |
| GetIndexForId | Returns the index in the source of the item, by ID. |
| GetParentId | Returns the parent ID of an item, by ID. |
| GetRootItemIds | Returns the root items of the tree, by IDs. |
| GetTreeItemsCount | Get the number of items in the whole tree. |
| HasChildren | Return whether the item with the specified ID has one or more child. |
| HasChildrenByIndex | Return whether the item with the specified index has one or more child. |
| IsExpanded | Return whether the item with the specified ID is expanded in the tree. |
| IsExpandedByIndex | Return whether the item with the specified index is expanded in the tree. |
| Move | Moves an item by ID, to a new parent and child index. |
| TryRemoveItem | Removes an item by id. |
| Dispose | Called when this controller is not longer needed to provide a way to release resources. |
| GetItemForId | Returns the item with the specified ID. |
| GetItemForIndex | Returns the item with the specified index. |
| GetItemsCount | Returns the expected item count in the source. |
| SetView | Sets the view for this controller. |

### Protected Methods

| Method | Description |
| --- | --- |
| BindItem | Binds a row to an item index. |
| DestroyItem | Destroys a VisualElement when the view is rebuilt or cleared. |
| MakeItem | Creates a VisualElement to use in the virtualization of the collection view. |
| PrepareView | Initialization step once the view is set. |
| RaiseItemIndexChanged | Invokes the itemIndexChanged event. |
| RaiseItemsSourceChanged | Invokes the itemsSourceChanged event. |
| SetItemsSourceWithoutNotify | Set the itemsSource without raising the itemsSourceChanged event. |
| UnbindItem | Unbinds a row to an item index. |

### Events

| Event | Description |
| --- | --- |
| itemIndexChanged | Raised when an item in the source changes index. The first argument is source index, second is destination index. |
| itemsSourceChanged | Raised when the itemsSource changes. |
