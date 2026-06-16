<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchItemOptions.RightToLeft.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If the description is longer than the search view, keeps the last characters.

```csharp
private static SearchItem SearchLogEntry(SearchContext context, SearchProvider provider, LogEntry logEntry)
{
    if (!SearchUtils.MatchSearchGroups(context, logEntry.msgLowerCased, true))
        return null;

    var logItem = provider.CreateItem(context, logEntry.id, ~logEntry.lineNumber, logEntry.msg, null, null, logEntry);
    logItem.options = SearchItemOptions.Ellipsis | SearchItemOptions.RightToLeft | SearchItemOptions.Highlight;
    return logItem;
}
```
