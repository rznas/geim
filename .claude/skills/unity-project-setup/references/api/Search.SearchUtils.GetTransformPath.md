<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.GetTransformPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tform | Transform to extract name from. |

### Returns

**string** Returns a transform name using "/" as hierarchy separator.

### Description

Format the pretty name of a Transform component by appending all the parent hierarchy names.

```csharp
static string FetchLabel(SearchItem item, SearchContext context)
{
    if (item.label != null)
        return item.label;

    var go = ObjectFromItem(item);
    if (!go)
        return item.id;

    var transformPath = SearchUtils.GetTransformPath(go.transform);
    var components = go.GetComponents<Component>();
    if (components.Length > 2 && components[1] && components[components.Length - 1])
        item.label = $"{transformPath} ({components[1].GetType().Name}..{components[components.Length - 1].GetType().Name})";
    else if (components.Length > 1 && components[1])
        item.label = $"{transformPath} ({components[1].GetType().Name})";
    else
        item.label = $"{transformPath} ({item.id})";

    return item.label;
}
```
