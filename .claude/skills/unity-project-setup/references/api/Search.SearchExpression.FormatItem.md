<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.FormatItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | SearchContext that yielded the SearchItem. |
| item | SearchItem to select value from. |
| formatString | Format string that mayh contain selectors. |

### Returns

**string** Returns a string where selectors have been replaced by the selected values from a given SearchItem.

### Description

Take a format string and replace all selectors in it with the selected values obtained from a SearchItem.

```csharp
[Description("Convert arguments to a string allowing you to format the result.")]
[SearchExpressionEvaluator(SearchExpressionType.Selector | SearchExpressionType.Text, SearchExpressionType.Iterable | SearchExpressionType.Literal | SearchExpressionType.Variadic)]
[SearchExpressionEvaluatorSignatureOverload(SearchExpressionType.Iterable | SearchExpressionType.Literal | SearchExpressionType.Variadic)]
public static IEnumerable<SearchItem> FormatItems(SearchExpressionContext c)
{
    var skipCount = 0;
    if (SearchExpression.GetFormatString(c.args[0], out var formatStr))
        skipCount++;
    var items = c.args.Skip(skipCount).SelectMany(e => e.Execute(c));
    var dataSet = SearchExpression.ProcessValues(items, null, item => SearchExpression.FormatItem(c.search, item, formatStr));
    return dataSet;
}
```
