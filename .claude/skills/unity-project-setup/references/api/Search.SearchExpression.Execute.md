<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.Execute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchContext | SearchContext used to initialize the SearchExpressionContext that will encapsulate all information relative to expression evaluation. |
| executionFlags | Execution flags helping define how to evaluate the expression. |
| c | SearchExpressionContext that will encapsulate all information relative to expression evaluation. |

### Returns

**void** Returns an enumerable list of SearchItem.

### Description

Execute a SearchEXpression givent a certain SearchContext Depending on flags the expression might be valuated in a worker thread (by default) or in the main thread. It returns a an enumerable list of SearchItem.

```csharp
[SearchExpressionEvaluator(SearchExpressionType.Iterable | SearchExpressionType.Variadic)]
[SearchExpressionEvaluatorSignatureOverload(SearchExpressionType.Number, SearchExpressionType.Iterable | SearchExpressionType.Variadic)]
[Description("Extract and returns the X first results for each expression.")]
public static IEnumerable<SearchItem> TakeXFirst(SearchExpressionContext c)
{
    var argIndex = 0;
    var takeNumber = 1;
    if (c.args[0].types.HasFlag(SearchExpressionType.Number))
    {
        ++argIndex;
        takeNumber = Math.Max((int)(c.args[0].GetNumberValue(takeNumber)), 0);
    }

    for ( ; argIndex < c.args.Length; ++argIndex)
    {
        var iterable = c.args[argIndex].Execute(c);
        var taken = 0;
        foreach (var item in iterable)
        {
            if (item == null)
                yield return null;
            else
            {
                yield return item;
                ++taken;
                if (taken == takeNumber)
                {
                    c.Break();
                    break;
                }
            }
        }
    }
}
```
