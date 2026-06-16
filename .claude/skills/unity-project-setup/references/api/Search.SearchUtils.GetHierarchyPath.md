<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.GetHierarchyPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | GameObject to extract a path from. |
| includeScene | If true, will append the scene name to the path. |

### Returns

**string** Returns the path of a GameObject.

### Description

Get the hierarchy path of a GameObject including the scene name if includeScene is set to true.

```csharp
static string FetchDescription(SearchItem item, SearchContext context)
{
    var go = ObjectFromItem(item);
    return (item.description = SearchUtils.GetHierarchyPath(go));
}
```
