<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Column.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a column in multi-column views such as multi-column list view or multi-column tree view. Provides the properties to define how user interacts with a column in a multi-column view, how its data and the data of each cell in this column are represented.

### Properties

| Property | Description |
| --- | --- |
| bindCell | Callback for binding the specified data item at the given row to the visual element. |
| bindHeader | Callback for binding the header element to this column. |
| bindingPath | Path of the target property to be bound. |
| cellTemplate | The VisualElement that is the template for each cell of the column. |
| collection | The column collection that contains this column. |
| comparison | The comparison to use when using ColumnSortingMode.Default. Compares two items by their index in the source. |
| destroyCell | Callback for destroying the VisualElement that was built for this column. |
| destroyHeader | Callback for destroying the visual representation of the column in the header. |
| headerTemplate | The VisualElement that is the template for the header of the column. |
| icon | The icon of the column. |
| makeCell | Callback for constructing the VisualElement that is the template for each cell of the column. |
| makeHeader | Callback for constructing the visual representation of the column in the header. |
| maxWidth | The maximum width of the column. |
| minWidth | The minimum width of the column. |
| name | The name of the column. |
| optional | Indicates whether the column is optional. Optional columns be shown or hidden interactively by the user. |
| resizable | Indicates whether the column can be resized interactively by the user. |
| sortable | Indicates whether the column can be sorted. |
| stretchable | Indicates whether the column will be automatically resized to fill the available space within its container. |
| title | The title of the column. |
| unbindCell | Callback for unbinding the specified data item at the given row from the visual element. |
| unbindHeader | Callback for unbinding the header element to this column. |
| visible | Indicates whether the column is visible. |
| width | The desired width of the column. |

### Events

| Event | Description |
| --- | --- |
| propertyChanged | Called when a property has changed. |
