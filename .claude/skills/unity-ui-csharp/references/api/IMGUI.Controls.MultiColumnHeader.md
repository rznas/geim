<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The MultiColumnHeader is a general purpose class that e.g can be used with the TreeView to create multi-column tree views and list views.

It supports resizing of columns widths by dragging and provides useful callbacks for reacting to user input. Note that columns can be hidden by the user using the context menu of the MultiColumnHeader.

Terminology used in the API: The parameter name `columnIndex` is used for indices into the columns array in the MultiColumnHeaderState object. While the parameter name `visibleColumnIndex` refers to the currently visible column index shown in the MultiColumnHeader.

### Properties

| Property | Description |
| --- | --- |
| allowDraggingColumnsToReorder | Use this property to control whether the user can drag and drop columns to re-order them. |
| canSort | Use this property to control whether sorting is enabled for all the columns. |
| currentColumnIndex | The index of the column that is currently being handled during an event. This property can be used for column specific handling when overriding AddColumnHeaderContextMenuItems |
| height | Customizable height of the multi column header. |
| sortedColumnIndex | The index of the column that is set to be the primary sorting column. This is the column that shows the sorting arrow above the header text. |
| state | This is the state of the MultiColumnHeader. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultiColumnHeader | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| GetCellRect | Calculates a cell rect for a column and row using the visibleColumnIndex and rowRect parameters. |
| GetColumn | Returns the column data for a given column index. |
| GetColumnRect | Returns the header column Rect for a given visible column index. |
| GetVisibleColumnIndex | Convert from column index to visible column index. |
| IsColumnVisible | Check if a column is currently visible in the MultiColumnHeader. |
| IsSortedAscending | Check the sorting order state for a column. |
| OnGUI | Render and handle input for the MultiColumnHeader at the given rect. |
| Repaint | Requests the window which contains the MultiColumnHeader to repaint. |
| ResizeToFit | Resizes the column widths of the columns that have auto-resize enabled to make all the columns fit to the width of the MultiColumnHeader render rect. |
| SetSortDirection | Change sort direction for a given column. |
| SetSorting | Sets the primary sorting column and its sorting order. |
| SetSortingColumns | Sets multiple sorting columns and the associated sorting orders. |

### Protected Methods

| Method | Description |
| --- | --- |
| AddColumnHeaderContextMenuItems | Override this method to extend the default context menu items shown when context clicking the header area. |
| ColumnHeaderClicked | Override to customize the behavior when clicking a column header. |
| ColumnHeaderGUI | Override to customize the GUI of a single column header. |
| OnSortingChanged | Called when sorting changes and dispatches the sortingChanged event. |
| OnVisibleColumnsChanged | Called when the number of visible column changes and dispatches the visibleColumnsChanged event. |
| SortingButton | Provides the button logic for a column header and the rendering of the sorting arrow (if visible). |
| ToggleVisibility | Method for toggling the visibility of a column. |

### Events

| Event | Description |
| --- | --- |
| columnSettingsChanged | Event raised when any settings from a column has changed (for example, a column width was resized). |
| columnsSwapped | Event raised when the user switches the order of two columns. |
| sortingChanged | Subscribe to this event to get notified when sorting has changed. |
| visibleColumnsChanged | Subscribe to this event to get notified when the number of visible columns has changed. |

### Delegates

| Delegate | Description |
| --- | --- |
| HeaderCallback | Delegate used for events from the MultiColumnHeader. |
