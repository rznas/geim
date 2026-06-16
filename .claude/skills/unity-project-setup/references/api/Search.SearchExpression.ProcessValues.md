<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.ProcessValues.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| items | Group of items to transform. |
| outputValueFieldName | Name of the field in the SearchItem to write the value to. If null, we write to the internal value of the item. |
| processHandler | Transformer function that need to returns a new value for the item. |

### Returns

**IEnumerable<SearchItem>** Yield a new list of items that have been transformed.

### Description

Take a group of SearchItems and apply a processHandler transformer function to the item in order to sets its internal value or an outputValueField. Note that these items are processed in the main thread thus allowing you to resolve any kind of selectors.

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
