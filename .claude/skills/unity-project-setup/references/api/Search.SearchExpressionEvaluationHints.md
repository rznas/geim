<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionEvaluationHints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Hints provided to the SearchExpression runtime to specify how a certain SearchExpressionEvaluatorAttribute should be executed.

Here is an example of an evaluator not supporting thread evaluation:

```csharp
[Description("Returns asset paths corresponding to a list of instance ids")]
[SearchExpressionEvaluator("IdsToPaths", SearchExpressionEvaluationHints.ThreadNotSupported, SearchExpressionType.Iterable)]
public static IEnumerable<SearchItem> IdsToPath(SearchExpressionContext c)
{
    foreach (var idItem in c.args[0].Execute(c))
    {
        if (SearchExpression.TryConvertToDouble(idItem, out var idNum))
        {
            var id = (int)idNum;
            var path = AssetDatabase.GetAssetPath(id);
            if (!string.IsNullOrEmpty(path))
            {
                yield return SearchExpression.CreateItem(path, c.ResolveAlias("asset path"));
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| ThreadSupported | Specifies that an evaluator supports being evaluated in a worker thread (that is not the main thread). This is the default evaluation hint. |
| ThreadNotSupported | Specifies that an evaluator does not support worker thread evaluation and should only be evaluated in the main thread. This could be the case if an evaluator is using non-tread safe Unity API (like AssetDatabase). |
| ExpandSupported | Specifies that an evaluator might return SearchItem containing SearchExpression that supports expansin like groupBy{}. |
| AlwaysExpand | Wehn evaluating a SearchExpression signifies that each ielded items could be another SearchExpression that needs evaluation. |
| DoNotValidateSignature | Specifies that the parameters of a SearchExpression shouldn't have their signature be validated. This is used mostly for meta programming evaluator lile apply{} where partial evaluator can be used as parameter. |
| DoNotValidateArgsSignature | Specifies that the evaluator signature shouldn't be validated by the SearchExpression runtime thus allowing any number of parameters with any types to be passed to the evaluator. It becomes the job of the evaluator itself to validate its parameters. |
| ImplicitArgsLiterals | Specifies that an evaluator assumes its arguments are literal and will be used as such. |
| Default | Default evaluation hints. Currently Default is that thread evaluation is supported (SearchExpressionEvaluationHints.ThreadSupported). |
