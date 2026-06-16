<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionEvaluationHints.ThreadNotSupported.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies that an evaluator does not support worker thread evaluation and should only be evaluated in the main thread. This could be the case if an evaluator is using non-tread safe Unity API (like AssetDatabase).

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
