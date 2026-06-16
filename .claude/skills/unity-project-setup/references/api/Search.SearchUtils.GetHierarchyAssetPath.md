<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.GetHierarchyAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | GameObject to find the scene path. |
| prefabOnly | If true, will return a path only if the GameObject is a prefab. |

### Returns

**string** Returns the path of a scene or prefab.

### Description

Get the path of the scene (or prefab) containing a GameObject.

```csharp
static Texture2D FetchPreview(SearchItem item, SearchContext context, Vector2 size, FetchPreviewOptions options)
{
    var obj = ObjectFromItem(item);
    if (obj == null)
        return item.thumbnail;

    var assetPath = SearchUtils.GetHierarchyAssetPath(obj, true);
    if (string.IsNullOrEmpty(assetPath))
        return item.thumbnail;

    if (options.HasFlag(FetchPreviewOptions.Large))
    {
        if (AssetPreview.GetAssetPreview(obj) is Texture2D tex)
            return tex;
    }
    return GetAssetPreviewFromPath(assetPath, size, options);
}
```
