<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A search list represents a collection of search results that is filled.

```csharp
public static IEnumerable<SearchItem> YieldResults()
{
    ISearchList results = SearchService.Request("*.cs");
    foreach (var result in results)
        yield return result;
}
```

### Properties

| Property | Description |
| --- | --- |
| context | Any valid search context that is used to track async search requests. It can be null. |
| pending | Indicates if the search request is still running and might return more results asynchronously. |

### Public Methods

| Method | Description |
| --- | --- |
| AddItems | Add new items to the search list. |
| Fetch | Yields search items until the search query is finished. |
| GetRange | Return a subset of items. |
| InsertRange | Insert new search items in the current list. |
| Select | Enumerate search items and transform them while they are being fetched. |
