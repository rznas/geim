<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MultiColumnController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default controller for a multi column view. Takes care of adding the MultiColumnCollectionHeader and reacting to the various callbacks.

### Static Properties

| Property | Description |
| --- | --- |
| cellLabelUssClassName | The USS class name for default labels cells inside a multi column view. |
| cellUssClassName | The USS class name for all cells inside a multi column view. |
| headerContainerUssClassName | The USS class name for the header container inside a multi column view. |
| rowContainerUssClassName | The USS class name for all row containers inside a multi column view. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultiColumnController | Constructor. It will create the MultiColumnCollectionHeader to use for the view. |

### Public Methods

| Method | Description |
| --- | --- |
| BindItem | Binds a row of multiple cells to an item index. |
| DestroyItem | Destroys a VisualElement when the view is rebuilt or cleared. |
| Dispose | Unregisters events and removes the header from the hierarchy. |
| MakeItem | Creates a VisualElement to use in the virtualization of the collection view. It will create a cell for every visible column. |
| PrepareView | Initialization step once the view is set. It will insert the multi column header in the hierarchy and register to important callbacks. |
| UnbindItem | Unbinds the row at the item index. |

### Events

| Event | Description |
| --- | --- |
| columnSortingChanged | Raised when sorting changes for a column. |
| headerContextMenuPopulateEvent | Raised when a column is right-clicked to bring context menu options. |
