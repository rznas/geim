<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchColumn.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search columns are used to display additional information in the Search Table view.

See SearchProvider.fetchColumns and SearchColumnProviderAttribute for some examples.

### Properties

| Property | Description |
| --- | --- |
| binder | If defined, the binder delegate is used to apply contextual data to a visual element. |
| cellCreator | If defined, the cell creator delegate is used to customize how the search column displays its information. |
| comparer | If defined, the comparer delegate is used to sort search results based on the value displayed in that column. |
| content | The content is used to display the search column label and image in its header. |
| drawer | If defined, the drawer delegate is used to customize how the search column displays its information. |
| getter | If defined, the getter delegate is used to customize how the search field data is extracted and transformed for display (see SearchColumn.drawer). |
| name | Name of the search column. |
| options | Various options used to define how a search column is presented. |
| path | The path can be used by the column delegates to interpret how the data can be manipulated. |
| provider | The provider is used to indicate which search column provider (see SearchColumn) is used to define the search column format. |
| selector | The selector is used by the column delegates to fetch the search field data. |
| setter | If defined, the setter delegate writes back the value to the corresponding field of the search result. |
| width | The column width is used to set the Search Table view column width. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchColumn | Creates a new search column. |

### Public Methods

| Method | Description |
| --- | --- |
| InitFunctors | Initialize the column provider functors. |

### Static Methods

| Method | Description |
| --- | --- |
| Enumerate | Enumerate a set of columns for a variety of search items. |
