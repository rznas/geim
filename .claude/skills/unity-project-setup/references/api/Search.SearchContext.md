<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The search context includes all the data necessary to perform a query. It allows the full customization of how a query may be performed.

### Properties

| Property | Description |
| --- | --- |
| empty | Indicates of the search query is empty. This exclude the search filter id. In example if the search text is h: , then this property will still return true. |
| filterId | Explicit filter ID. Usually it is the first search token like h:, p: to do an explicit search for a given search provider. Can be null. |
| options | Search context options. |
| progressId | Progress handle to display the progress bar for the search currently in progress. |
| providers | Which search providers are active for this particular context. |
| searchInProgress | Indicates if an asynchronous search is currently in progress for this context. |
| searchPhrase | Returns a phrase that contains only words separated by spaces. |
| searchQuery | Processed search query (no filterId, no textFilters). |
| searchQueryOffset | Character offset of the processed search query in the raw search text. |
| searchText | Raw search text (what is in the Search text box). |
| searchView | The search view presenting the search results. |
| searchWords | Search query tokenized by words. All text filters are discarded and all words are in lowercase. |
| selection | Returns the search result selection if any. |
| textFilters | All tokens containing a colon (':'). |
| wantsMore | Indicates if the search should return all the results instead of only the most relevant. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchContext | Creates a new search context. |

### Public Methods

| Method | Description |
| --- | --- |
| AddSearchQueryError | Adds a new query error on this context. |
| AddSearchQueryErrors | Adds new query errors on this context. |
| Dispose | Dispose of the Search Context. |
| IsEnabled | Checks if a search provider is available to process a query. |
| SetFilter | Enables or disables a single search provider. A disabled search provider won't be asked to provide items to resolve the query. |

### Events

| Event | Description |
| --- | --- |
| asyncItemReceived | This event is used to receive any asynchronous search result. |
| sessionEnded | Invoked when a Search has ended. |
| sessionStarted | Invoked when a Search is started. |
