<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.FetchPreviewOptions.Large.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the preview resolution should be higher than 256x256.

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
