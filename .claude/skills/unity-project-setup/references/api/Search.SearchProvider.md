<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SearchProvider manages search for specific types of items and manages all fields of a SearchItem such as thumbnails, descriptions, subfilters.

A first example that allows to search for specific prefabs and insert them in the scene.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class TreeSearchProvider
{
    internal static string id = "example_tree";

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


    [SearchActionsProvider]
    internal static IEnumerable<SearchAction> ActionHandlers()
    {
        yield return new SearchAction(id, "Insert tree", null, "Insert a single tree in scene", (SearchItem item) => InsertPrefab(item.id));
    }

    static GameObject InsertPrefab(string path)
    {
        return (GameObject)PrefabUtility.InstantiatePrefab(
            AssetDatabase.LoadMainAssetAtPath(path),
            Selection.activeGameObject != null ? Selection.activeGameObject.transform : null);
    }
}
```

Another example that allows to search for lights and modify them. This provider uses another provider to get the lights.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class LightsSearchProvider
{
    [SearchItemProvider]
    internal static SearchProvider CreateProvider()
    {
        return new SearchProvider("example_lights", "Lights")
        {
            filterId = "z:",
            priority = 99999, // Put example provider at a low priority
            showDetailsOptions = ShowDetailsOptions.Inspector,
            fetchItems = (context, items, provider) => FetchItems(context, provider),
            toObject = (item, type) => item.data as Light,
            onEnable = () => { /*Cache some data in here*/ },
            onDisable = () => { /*Clear the cache*/ },

            // This provider can be used in the scene view contextually.
            isEnabledForContextualSearch = () => IsFocusedWindowTypeName("SceneView")
        };
    }

    static IEnumerable<SearchItem> FetchItems(SearchContext context, SearchProvider provider)
    {
        if (context.empty)
            yield break;

        var sceneProvider = SearchService.GetProvider("scene");
        using (var sceneQuery = SearchService.CreateContext(sceneProvider, $"t:light {context.searchQuery}"))
        using (var results = SearchService.Request(sceneQuery))
        {
            var lightIcon = EditorGUIUtility.FindTexture("Lighting");
            foreach (var r in results)
            {
                if (r == null)
                {
                    // ***IMPORTANT***: Make sure to yield so you do not block the main thread waiting for results.
                    yield return null;
                }
                else
                {
                    yield return provider.CreateItem(context, r.id,
                        r.GetLabel(sceneQuery, true), r.GetDescription(sceneQuery, true),
                        lightIcon, r.ToObject<GameObject>().GetComponent<Light>());
                }
            }
        }
    }

    static bool IsFocusedWindowTypeName(string focusWindowName)
    {
        return EditorWindow.focusedWindow != null && EditorWindow.focusedWindow.GetType().ToString().EndsWith("." + focusWindowName);
    }

    [MenuItem("Examples/SearchProvider/Show lights")]
    public static void ShowLights()
    {
        // Search for directional lights (lights with "directional" in their name)
        SearchService.ShowWindow(SearchService.CreateContext("z:directional"));
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| actions | Search provider actions. |
| active | Indicates if the search provider is active or not. Inactive search providers are ignored by the search service. The active state can be toggled in the search settings. |
| fetchColumns | Handler used to enumerate search columns to be used in the Search Table view. |
| fetchDescription | Handler to provide an asynchronous description for an item. Is called when the item is about to be displayed. Allows a plugin provider to only fetch long descriptions when they are needed. |
| fetchItems | MANDATORY: Handler to get items for a given search context. The return value is an object that can be of type IEnumerable or IEnumerator. The enumeration of those objects should return SearchItems. |
| fetchLabel | Handler used to fetch and format the label of a search item. |
| fetchPreview | Similar to fetchThumbnail, fetchPreview usually returns a bigger preview. The Search UI will progressively show one preview each frame, preventing the UI from blocking if many previews need to be generated at the same time. |
| fetchPropositions | Handler used to enumerate search propositions when the user is using TAB to auto-complete a query. |
| fetchThumbnail | Handler to provide an asynchronous thumbnail for an item. Is called when the item is about to be displayed. Compared to preview a thumbnail should be small and returned as fast as possible. Use fetchPreview if you want to generate a preview that is bigger and slower to return. Allows a plugin provider to only fetch/generate previews when they are needed. |
| filterId | Text token used to "filter" by search provider (ex: "me:", "p:", "s:"). |
| id | Search provider unique ID. |
| isEnabledForContextualSearch | Called when search is invoked in "contextual mode". Returns true if the search provider is enabled for this search context. |
| isExplicitProvider | This search provider is only active when specified explicitly using the filterId. |
| name | Unique ID of the search provider. |
| onDisable | Called when the SearchWindow is closed. Allows the search provider to release cached resources. |
| onEnable | Called when the SearchWindow is opened. Allows the search provider to perform some caching. |
| priority | Hint to sort the search provider. Affects the order of search results and the order in which search providers are shown in the FilterWindow. |
| showDetails | Indicates if the search provider can show additional details or not. |
| showDetailsOptions | Defines the details options to be shown. |
| startDrag | If implemented, the item supports drag. It is up to the SearchProvider to properly set up the DragAndDrop manager. |
| toObject | Returns any valid Unity object held by the search item. |
| trackSelection | Called when the selection changed and can be tracked. |
| type | The search provider type can be another search provider id that provider is based on. This is used when we have multiple groups in the search view that list results from a similar provider. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchProvider | Create a new SearchProvider. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateItem | Helper function to create a new search item for the current search provider. |
