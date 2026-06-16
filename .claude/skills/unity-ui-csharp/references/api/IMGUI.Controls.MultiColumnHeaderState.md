<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeaderState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

State used by the MultiColumnHeader.

This state object.

### Properties

| Property | Description |
| --- | --- |
| columns | The array of column states used by the MultiColumnHeader class. |
| maximumNumberOfSortedColumns | This property controls the maximum number of columns returned by the sortedColumns property. |
| sortedColumnIndex | This property holds the index to the primary sorted column. |
| sortedColumns | The array of column indices for multiple column sorting. |
| visibleColumns | This is the array of currently visible column indices. |
| widthOfAllVisibleColumns | Returns the sum of all the widths of the visible columns in the visibleColumns array. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultiColumnHeaderState | Constructor. |

### Static Methods

| Method | Description |
| --- | --- |
| CanOverwriteSerializedFields | Checks if the source state can transfer its serialized data to the destination state. |
| OverwriteSerializedFields | Overwrites the seralized fields from the source state to the destination state. |
