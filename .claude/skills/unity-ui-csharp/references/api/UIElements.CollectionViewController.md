<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CollectionViewController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base collection view controller. View controllers are meant to take care of data virtualized by any BaseVerticalCollectionView inheritor.

For the difference between IDs and indices, refer to BaseVerticalCollectionView.

### Properties

| Property | Description |
| --- | --- |
| itemsSource | The items source stored in a non-generic list. |
| view | The view for this controller. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Called when this controller is not longer needed to provide a way to release resources. |
| GetIdForIndex | Returns the id for the specified index. |
| GetIndexForId | Returns the index for the specified id. |
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
