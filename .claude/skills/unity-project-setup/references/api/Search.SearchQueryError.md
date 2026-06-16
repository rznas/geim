<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchQueryError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a query parsing error.

This class is only used in the context of SearchProviders, when performing a search. It allows a SearchProvider to report error during the parsing of the search query. Here is an example of a SearchProvider that uses a QueryEngine and reports parsing errors:

```csharp
var query = m_QueryEngine.ParseQuery(context.searchQuery);
if (!query.valid)
{
    context.AddSearchQueryErrors(query.errors.Select(e => new SearchQueryError(e, context, this)));
    return Array.Empty<SearchItem>();
}
```

In the previous example, the function "Search" would be called by the provider's fetchItem.

In the Search window, the errors are shown when there is no result available. .

### Properties

| Property | Description |
| --- | --- |
| context | The context in which this error was logged. |
| index | Index where the error occurred. |
| length | Length of the block that was being parsed. |
| provider | Which search provider logged this error. |
| reason | The reason for the error. |
| type | The type of query error. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchQueryError | Creates a new SearchQueryError. |
