<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider-fetchColumns.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handler used to enumerate search columns to be used in the Search Table view.

See SearchColumnProviderAttribute if you need to define new column formats to display your custom values.

```csharp
static IEnumerable<SearchColumn> FetchColumns(SearchContext context, IEnumerable<SearchItem> items)
{
    yield return new SearchColumn("Performance/Sample Count", "count", nameof(PerformanceMetric));
    yield return new SearchColumn("Performance/Peak Time", "peak", nameof(PerformanceMetric));
    yield return new SearchColumn("Performance/Average Time", "avg", nameof(PerformanceMetric));
    yield return new SearchColumn("Performance/Total Time", "total", nameof(PerformanceMetric));
}[SearchColumnProvider(nameof(PerformanceMetric))]
public static void PerformanceMetric(SearchColumn column)
{
    column.getter = args =>
    {
        switch (column.selector)
        {
            case "count": return EditorPerformanceTracker.GetSampleCount(args.item.id);
            case "peak": return EditorPerformanceTracker.GetPeakTime(args.item.id);
            case "avg": return EditorPerformanceTracker.GetAverageTime(args.item.id);
            case "total": return EditorPerformanceTracker.GetTotalTime(args.item.id);
            case "age": return EditorPerformanceTracker.GetTimestamp(args.item.id);
        }        return null;
    };    if (column.selector != "count")
    {
        column.drawer = args =>
        {
            GUI.Label(args.rect, GetTimeLabel((double)args.value, 0.5d, 2.0d), ItemSelectors.GetItemContentStyle(column));
            return args.value;
        };
    }
}
```
