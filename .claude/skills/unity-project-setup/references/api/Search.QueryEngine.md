<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A QueryEngine defines how to build a query from an input string. It can be customized to support custom filters and operators. Default query engine of type object.

See QueryEngine<T>.

### Constructors

| Constructor | Description |
| --- | --- |
| QueryEngine | Construct a new QueryEngine. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| globalStringComparison | Global string comparison options for word matching and filter handling (if not overridden). |
| searchDataCallback | The callback used to get the data to match to the search words. |
| searchDataOverridesStringComparison | Indicates if word/phrase matching uses searchDataStringComparison or not. |
| searchDataStringComparison | String comparison options for word/phrase matching. |
| searchWordMatcher | The function used to match the search data against the search words. |
| skipIncompleteFilters | Boolean. Indicates if incomplete filters should be skipped. If true, filters are skipped. If false and validateFilters is true, incomplete filters will generate errors when parsed. |
| skipUnknownFilters | Boolean. Indicates if unknown filters should be skipped. If true, unknown filters are skipped. If false and validateFilters is true, unknown filters will generate errors if no default filter handler is provided. |
| validateFilters | Get or set if the engine must validate filters when parsing the query. Defaults to true. |

### Public Methods

| Method | Description |
| --- | --- |
| AddFilter | Adds a new custom filter. |
| AddFiltersFromAttribute | Adds all custom filters that are identified with the method attribute TFilterAttribute. |
| AddNestedQueryAggregator | Adds a new nested query aggregator. An aggregator is an operation that can be applied on a nested query to aggregate the results of the nested query according to certain criteria. |
| AddOperator | Adds a custom filter operator. |
| AddOperatorHandler | Adds a custom filter operator handler. |
| AddTypeParser | Adds a type parser that parses a string and returns a custom type. Used by custom operator handlers (see AddOperatorHandler). |
| ClearFilters | Removes all filters that were added on the QueryEngine. |
| GetAllFilters | Get all filters added on this QueryEngine. |
| GetOperator | Get a custom operator added on the QueryEngine. |
| ParseQuery | Parses a query string into a ParsedQuery operation. This ParsedQuery operation can then be used to filter any data set of type TData. |
| RemoveFilter | Removes a custom filter. |
| RemoveOperator | Removes a custom operator that was added on the QueryEngine. |
| SetDefaultFilter | Sets the default filter handler for filters that were not registered. |
| SetDefaultParamFilter | Sets the default filter handler for function filters that were not registered. |
| SetFilterNestedQueryTransformer | Sets a filter's nested query transformer function. This function takes the result of a nested query and extracts the necessary data to compare with the filter. |
| SetGlobalStringComparisonOptions | Sets global string comparison options. Used for word matching and filter handling (unless overridden by filter). |
| SetNestedQueryHandler | Sets the function that will handle nested queries. Only one handler can be set. |
| SetSearchDataCallback | Sets the callback used to fetch the data that is matched against the search words. |
| SetSearchWordMatcher | Set the search word matching function to be used instead of the default one. Set to null to use the default. |
| TryGetFilter | Get a filter by its token. |
