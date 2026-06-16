<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MultiColumnListViewController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multi-column list view controller. View controllers of this type are meant to take care of data virtualized by any MultiColumnListView inheritor.

### Properties

| Property | Description |
| --- | --- |
| columnController | The column controller, taking care of operations on the header. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultiColumnListViewController | The constructor for MultiColumnListViewController. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Unregisters events and removes the header from the hierarchy. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| baseListView | View for this controller, cast as a BaseListView. |
| itemsSource | The items source stored in a non-generic list. |
| view | The view for this controller. |

### Public Methods

| Method | Description |
| --- | --- |
| AddItems | Adds a certain amount of items at the end of the collection. |
| ClearItems | Removes all items from the source. |
| Move | Moves an item in the source. |
| NeedsDragHandle | Returns whether this item needs a drag handle or not with the Animated drag mode. |
| RemoveItem | Removes an item from the source, by index. |
| RemoveItems | Removes items from the source, by indices. |
| GetIdForIndex | Returns the id for the specified index. |
| GetIndexForId | Returns the index for the specified id. |
| GetItemForId | Returns the item with the specified ID. |
| GetItemForIndex | Returns the item with the specified index. |
| GetItemsCount | Returns the expected item count in the source. |
| SetView | Sets the view for this controller. |

### Protected Methods

| Method | Description |
| --- | --- |
| RaiseItemsAdded | Invokes the itemsAdded event. |
| RaiseItemsRemoved | Invokes the itemsRemoved event. |
| RaiseOnSizeChanged | Invokes the itemsSourceSizeChanged event. |
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
| itemsAdded | Raised when an item is added to the CollectionViewController.itemsSource. |
| itemsRemoved | Raised when an item is removed from the CollectionViewController.itemsSource. |
| itemsSourceSizeChanged | Raised when the CollectionViewController.itemsSource size changes. |
| itemIndexChanged | Raised when an item in the source changes index. The first argument is source index, second is destination index. |
| itemsSourceChanged | Raised when the itemsSource changes. |
