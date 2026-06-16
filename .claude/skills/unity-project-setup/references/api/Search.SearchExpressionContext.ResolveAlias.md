<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionContext.ResolveAlias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| defaultLabel | If no exeuction frames are present this becomes the default alias to be resolved. |
| expr | Default expression to look to resolve the alias. If null, use the runtime to resolve the alias. |

### Returns

**string** Returns a resolved alias.

### Description

Try to resolve an alias value using the SearchExpressionRuntime attached to this context. Each frame if asked to resolve a SearchExpression.alias.

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
