<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.TryConvertToDouble.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| item | SearchItem to extract the value from. |
| value | Resulting value. |
| selector | Selector use to access an item value. If null, we will use the internal item value. |

### Returns

**bool** Returns true if we were able to select the value and convert it to a double.

### Description

Resolve a selector on an item and try to convert the selected value to a double.

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
