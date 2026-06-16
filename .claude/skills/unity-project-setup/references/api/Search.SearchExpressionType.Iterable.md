<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionType.Iterable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Denote an expression that can iterated to yield SearchItem. Set: [1, 2, 3], Query String: t:shader and evaluator: count{} are all example of iterables.

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
