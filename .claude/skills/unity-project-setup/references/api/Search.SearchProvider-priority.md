<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider-priority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Hint to sort the search provider. Affects the order of search results and the order in which search providers are shown in the FilterWindow.

The lowest priority is first.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class SearchProvider_priority
{
    static string typeColors = "example_colors_priority";
    static string displayNameColors = "example_Colors_priority";
    static string typeFruits = "example_fruits_priority";
    static string displayNameFruits = "example_Fruits_priority";

    static List<string> colors = new List<string> { "orange", "red", "green", "blue" };
    static List<string> fruits = new List<string> { "orange", "apple", "banana", "strawberry" };

    [SearchItemProvider]
    internal static SearchProvider CreateProviderColors()
    {
        return new SearchProvider(typeColors, displayNameColors)
        {
            priority = 99991,
            filterId = "c:",
            isExplicitProvider = false,
            fetchItems = (context, items, provider) =>
            {
                var expression = context.searchQuery;
                if (colors.Contains(expression))
                {
                    var id = expression + "(color)";
                    items.Add(provider.CreateItem(context, id, id, id, null, null));
                }
                return null;
            }
        };
    }

    [SearchItemProvider]
    internal static SearchProvider CreateProviderFruits()
    {
        return new SearchProvider(typeFruits, displayNameFruits)
        {
            priority = 99992,
            filterId = "f:",
            isExplicitProvider = false,
            fetchItems = (context, items, provider) =>
            {
                var expression = context.searchQuery;
                if (fruits.Contains(expression))
                {
                    var id = expression + "(fruit)";
                    items.Add(provider.CreateItem(context, id, id, id, null, null));
                }
                return null;
            }
        };
    }

    [MenuItem("Examples/SearchProvider/priority")]
    public static void Run()
    {
        SearchService.SetActive(typeColors);
        SearchService.SetActive(typeFruits);

        using (var context = SearchService.CreateContext("orange"))
        {
            // For the purpose if this example, we use the flag synchronous to get the items immediately.
            var results = SearchService.GetItems(context, SearchFlags.Synchronous);
            // Color should be the first one (both items have the same score but color provider has the lowest priority).
            Debug.Log(results.Count);
            Debug.Log(results[0].description); // "orange(color)";
            Debug.Log(results[1].description); // "orange(fruit)";
        }
    }
}
```
