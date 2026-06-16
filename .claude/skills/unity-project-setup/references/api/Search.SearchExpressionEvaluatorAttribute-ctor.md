<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionEvaluatorAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| signatureArgumentTypes | Array of types corresponding to the type of the parameters used with this evaluator. |
| name | N ame of the evaluator. If no name are specified the name of the evaluator functio will be used. |
| hints | Hints to specify to the evaluator runtime how function should be run. |

### Description

Use this attribute to register a static C# function as a new evaluator. SearchExpressionEvaluator when use within a SearchExpression can have a signature that is validated against the passed parameters.

Here is an example using a Variadic paramater.

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

Here is an example not supporting thread evaluation.

```csharp
[Description("Returns ids of current selection")]
[SearchExpressionEvaluator(SearchExpressionEvaluationHints.ThreadNotSupported)]
public static IEnumerable<SearchItem> SelectionIds(SearchExpressionContext c)
{
    var instanceIds = UnityEditor.Selection.instanceIDs;
    foreach (var id in instanceIds)
    {
        yield return SearchExpression.CreateItem(id, c.ResolveAlias("selected id"));
    }
}
```
