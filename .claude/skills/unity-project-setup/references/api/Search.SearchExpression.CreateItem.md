<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.CreateItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label of the SearchItem. This will be displayed in the search Window. |
| value | Initial value of the SearchItem. |
| description | Optional description of the SearchItem. This will be displayed in the search Window. |

### Returns

**SearchItem** Returns a new SearchItem.

### Description

Create a new SearchItem from a value with an optional label.

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
