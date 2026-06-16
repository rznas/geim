<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ISearchEngine_1.Search.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The search context. |
| query | The query string used for the search. |
| asyncItemsReceived | Callback used to return results asynchronously. |

### Returns

**IEnumerable<T>** The initial search results, if any are available. If you want to return results asynchronously, and no results are available yet, return an empty list instead. If you return null, then Unity uses the default implementation.

### Description

This function returns an IEnumerable of items that satisfy the search query.

You can return items synchronously and asynchronously with this function. To return results synchronously, use the returned IEnumerable. To return results asynchronously, use the asyncItemsReceived callback that takes an IEnumerable as a parameter.

To only return results asynchronously, return an empty IEnumerable. If you return null, the default Project search is used instead.
