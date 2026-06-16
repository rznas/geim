<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider-fetchPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Similar to fetchThumbnail, fetchPreview usually returns a bigger preview. The Search UI will progressively show one preview each frame, preventing the UI from blocking if many previews need to be generated at the same time.

```csharp
[SearchItemProvider]
internal static SearchProvider CreateProvider()
{
    return new SearchProvider("example_tree", "Trees")
    {
        filterId = "tree:",
        priority = 99999, // Put example provider at a low priority
        showDetailsOptions = ShowDetailsOptions.Inspector | ShowDetailsOptions.Actions,
        fetchItems = (context, items, provider) => FetchItems(context, provider),
        fetchThumbnail = (item, context) => AssetDatabase.GetCachedIcon(item.id) as Texture2D,
        fetchPreview = (item, context, size, options) => AssetDatabase.GetCachedIcon(item.id) as Texture2D,
        fetchLabel = (item, context) => AssetDatabase.LoadMainAssetAtPath(item.id).name,
        fetchDescription = (item, context) => AssetDatabase.LoadMainAssetAtPath(item.id).name,
        toObject = (item, type) => AssetDatabase.LoadMainAssetAtPath(item.id),
        trackSelection = TrackSelection,
        startDrag = StartDrag
    };
}

private static IEnumerable<SearchItem> FetchItems(SearchContext context, SearchProvider provider)
{
    if (context.empty)
        yield break;

    // Yield items asynchronously which is the recommended way.
    foreach (var guid in AssetDatabase.FindAssets("t:Prefab tree " + context.searchQuery))
        yield return provider.CreateItem(context, AssetDatabase.GUIDToAssetPath(guid), null, null, null, null);
}

private static void TrackSelection(SearchItem searchItem, SearchContext searchContext)
{
    EditorGUIUtility.PingObject(AssetDatabase.LoadMainAssetAtPath(searchItem.id));
}

private static void StartDrag(SearchItem item, SearchContext context)
{
    if (context.selection.Count > 1)
    {
        var selectedObjects = context.selection.Select(i => AssetDatabase.LoadMainAssetAtPath(i.id));
        var paths = context.selection.Select(i => i.id).ToArray();
        StartDrag(selectedObjects.ToArray(), paths, item.GetLabel(context, true));
    }
    else
        StartDrag(new[] { AssetDatabase.LoadMainAssetAtPath(item.id) }, new[] { item.id }, item.GetLabel(context, true));
}

public static void StartDrag(UnityEngine.Object[] objects, string[] paths, string label = null)
{
    if (paths == null || paths.Length == 0)
        return;
    DragAndDrop.PrepareStartDrag();
    DragAndDrop.objectReferences = objects;
    DragAndDrop.paths = paths;
    DragAndDrop.StartDrag(label);
}
```
