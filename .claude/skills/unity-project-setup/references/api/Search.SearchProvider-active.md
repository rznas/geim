<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchProvider-active.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates if the search provider is active or not. Inactive search providers are ignored by the search service. The active state can be toggled in the search settings.

```csharp
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class SearchProvider_active
{
    static string typeColors = "example_colors_active";
    static string displayNameColors = "example_Colors_active";
    static string typeFruits = "example_fruits_active";
    static string displayNameFruits = "example_Fruits_active";

    static List<string> colors = new List<string> { "orange", "red", "green", "blue" };
    static List<string> fruits = new List<string> { "orange", "apple", "banana", "strawberry" };

    [SearchItemProvider]
    internal static SearchProvider CreateProviderColors()
    {
        return new SearchProvider(typeColors, displayNameColors)
        {
            filterId = "c:",
            priority = 99999, // put example provider at a low priority
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
            filterId = "f:",
            priority = 99999, // put example provider at a low priority
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

    [MenuItem("Examples/SearchProvider/active")]
    public static void Run()
    {
        var colorProvider = SearchService.GetProvider(typeColors);
        colorProvider.active = false;

        var context = SearchService.CreateContext("orange");

        // The providers used in the context should not contain the inactive provider
        var sb = new StringBuilder();
        foreach (var provider in context.providers)
            sb.AppendLine(provider.name);
        Debug.Log(sb.ToString());
    }
}
```
