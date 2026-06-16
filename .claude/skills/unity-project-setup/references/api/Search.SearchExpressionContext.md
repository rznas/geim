<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This context encapsulate all the datas needed to evaluate a SearchExpression and it allows user to interact with the evaluation runtime of an expression. A SearchExpressionContext is created automatically with a SearchExpressionRuntime anytime SearchExpression.Execute is called.

Here is an example showing ow the SearchExpressionContext is used during evaluation:

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

### Properties

| Property | Description |
| --- | --- |
| args | Arguments of passed to the SearchExpression being evaluated. |
| expression | [[]SearchExpression] being evaluated. |
| items | SearchItems yielded by the evaluation of a searchExpression. |
| runtime | SearchExpressionRuntime associated with this context. The runtime stores all runtime data (stack frames, stack of contex and items) necessary for evaluation of a SearchExpression. |
| search | SearchContex containing the search query that was parsed to create the SearchExpression. |
| valid | Is the current context valid or not. If invalid it means the associated SearchExpression is null or the SearchExiressionRuntime is invalid. |

### Public Methods

| Method | Description |
| --- | --- |
| Break | Break the evaluation of a SearchExpression meaning items won't be yielded anymore. |
| Continue | Tell SearchExpression evaluation to continue. |
| IsBreaking | Has the current context being flagged to break execution? |
| IsContinuing | Has the current context being flagged to continue execution? |
| ResetIterationControl | Restart evaluation and iteration of SearchExpression. |
| ResolveAlias | Try to resolve an alias value using the SearchExpressionRuntime attached to this context. Each frame if asked to resolve a SearchExpression.alias. |
| ThrowError | Stop a SearchExpression evaluation by throwing a SearchExceptionEvaluatorException. User writing an evaluator can decide to throw thse exceptions if the parameters passed to evaluation are not valid or if a problem happens during evaluation. |
| ToString | Get string representation of a context. |
