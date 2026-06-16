<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.GetFormatString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| expr | Expression to convert to a format string. |
| formatStr | Extracted format string. |

### Returns

**bool** Returns true if the SearchExpression was succesfully converted to a format string.

### Description

Extract a format string from a given expression. This function should be used to extract a format string from an input parameter of a SearchExpression. For example: the evaluator print{"this is it: @label"} takes a format string as its first parameter.

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
