<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/search-tables.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Use tables to manage results

Use the **Search** window’s table layout to work with assets and other search results as rows in a spreadsheet-style view. This customizable view allows you to compare assets, edit them individually or as groups, and export their information for reports.

To open the **Search** window and select views, refer to Launch and use the Search window.

## Build your table

Use these techniques to build a table with the information you want to manage:

- Switch to the table layout
- Sort by column
- Add columns
- Customize a column
- Rearrange, remove, or hide columns
- Reset and save column layouts

### Switch to the table layout

1. Open the **Search** window and run a query.
2. In the **Search** window, select **Table View**.

### Sort by column

Click a column header to sort by that column. Click again to change between ascending and descending order.

### Add columns

To add a property or selector as a new column:

1. Right-click a column header and choose **Add Column**.
2. Select a property or selector. To filter the list, use its search box.

### Customize a column

To change how a column behaves or appears:

1. Right-click the column header and choose **Edit**.
2. In the **Edit Search Column Settings** window, adjust the fields as needed.

| Field | Description |
| --- | --- |
| **Format** | Determine how to interpret values. For example, select **Serialized Property**, **Material Property** to display editable values. If the format doesn’t match the data, the table can’t display results in that column. |
| **Icon** | Select an icon to show in the column header. |
| **Name** | Enter a column title. |
| **Alignment** | Select the horizontal alignment of the column header and cell content. |
| **Sortable** | Determine whether you can sort the column. |
| **Path** | The value’s property path for debugging what the search query is returning as a result. |
| **Selector** | Selector string used with the query, for example to match properties in searches. |

### Rearrange, remove, or hide columns

To manage columns:

- **Reorder:** Drag a column header horizontally.
- **Remove:** Right-click the header and choose **Remove**.
- **Hide or show without deleting:** Right-click a column header, select **Show Columns**, and toggle each column. A checkmark means the column is visible. At least one column must stay visible.

### Reset and save column layouts

To restore the default table layout, select the reset control next to **Add column**.

To save a layout, save your search query. Saved searches store the current query and the table configuration. For more information, refer to Manage search queries.

## Edit information in the table

To edit asset information in the table:

1. Ensure the information is in an editable format.
2. Edit one or more values.

**Note:** Editing in the table doesn’t run custom ****Inspector**** drawing or property workflows. Dependencies, validation, or side effects that live in custom editors might not run. For complex or safety-critical edits, use the **Inspector**.

### Select editable formats

To make cells editable, set the column **Format** to an editable format. The formats **Serialized Property** and **Material Property** are always editable; other formats might also be editable in your project.

**Tip:** If the value for an individual entry can’t be edited despite being an editable format, the value’s field is grayed out.

### Edit single or multiple values

The table displays values by their type. To learn how to edit each type, refer to Manage components and their values.

To edit a value across multiple entries:

1. Select multiple entries:
  - To select entries one at a time, hold Ctrl (macOS: hold Command) and left-click.
  - To select a range of entries, select the first entry, then hold Shift and left-click the last entry.
2. Edit the value in any of the entries. All entries are updated at the same time.

## Export information from the table

To export the current results as a table:

1. In the **Search** window, select **Save**.
2. Select either:
  - For a JSON (TVC): **Export Report…**
  - For a CSV: **Export CSV…**

## Additional resources

- Launch and use the Search window
- Act on search results
- Manage search queries
- Focus searches with search providers
- Textual query references
- Visual query builder reference
