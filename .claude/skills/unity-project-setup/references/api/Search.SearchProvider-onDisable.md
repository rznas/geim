<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider-onDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the SearchWindow is closed. Allows the search provider to release cached resources.

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
