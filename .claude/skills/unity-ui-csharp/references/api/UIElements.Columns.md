<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Columns.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a collection of columns.

### Properties

| Property | Description |
| --- | --- |
| Count | Gets the number of columns in the collection. |
| IsReadOnly | Gets a value indicating whether the collection is readonly. |
| primaryColumnName | Indicates the column that needs to be considered as the primary column, by ID. |
| reorderable | Indicates whether the columns can be reordered interactively by user. |
| resizable | Indicates whether the columns can be resized interactively by user. |
| resizePreview | Indicates whether columns are resized as the user drags resize handles or only upon mouse release. |
| stretchMode | Indicates how the size of columns in this collection is automatically adjusted as other columns or the containing view get resized. The default value is StretchMode.GrowAndFill |
| this[int] | Returns the column at the specified index. |

### Public Methods

| Method | Description |
| --- | --- |
| Add | Adds a column at the end of the collection. |
| Clear | Removes all columns from the collection. |
| Contains |  |
| CopyTo | Copies the elements of the current collection to a Array, starting at the specified index. |
| GetEnumerator | Returns an enumerator that iterates through the collection. |
| IndexOf | Returns the index of the specified column if it is contained in the collection; returns -1 otherwise. |
| Insert | Inserts a column into the current instance at the specified index. |
| IsPrimary | Checks if the specified column is the primary one. |
| Remove | Removes the first occurence of a column from the collection. |
| RemoveAt | Removes the column at the specified index. |
| ReorderDisplay | Reorders the display of a column at the specified source index, to the destination index. |

### Events

| Event | Description |
| --- | --- |
| propertyChanged | Called when a property has changed. |
