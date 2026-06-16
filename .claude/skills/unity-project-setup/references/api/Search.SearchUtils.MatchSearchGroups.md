<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.MatchSearchGroups.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context containing the searchQuery that search tries to match. |
| content | String content that is tokenized and used to match the search query. |
| ignoreCase | Perform matching while ignoring letter casing. |

### Returns

**bool** If a match has occurred.

### Description

Helper function to match a string against the SearchContext. This will try to match the search query against each token of content (similar to the AddComponent menu workflow).

```csharp
private static IEnumerable<SearchItem> SearchLogs(SearchContext context, SearchProvider provider)
{
    lock (s_Logs)
    {
        if (!s_Initialized)
        {
            s_Initialized = true;
            Application.logMessageReceived -= HandleLog;
            Application.logMessageReceived += HandleLog;
        }
        for (int logIndex = 0; logIndex < s_Logs.Count; ++logIndex)
            yield return SearchLogEntry(context, provider, s_Logs[logIndex]);
    }
}
```
