<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchMonitor.GetView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| delayedSync | Boolean indicating if the sync between views should only happen when the view is disposed, or for every operation. Default is false. |

### Returns

**SearchMonitorView** A SearchMonitorView.

### Description

Returns a SearchMonitorView to access Search's main PropertyDatabases.

Multiple nested calls to GetView are supported. If those calls are on the same thread, it will return the same instance to avoid opening and closing new views. If the calls are on different threads, new views will be opened. Here is an example of a custom Scene SearchProvider using GetView to cache data in Search's main PropertyDatabases to increase search speed:

```csharp
using System;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class CustomSceneProvider
{
    const string k_ProviderId = "customSceneProvider";

    static QueryEngine<GameObject> s_QueryEngine;

    [SearchItemProvider]
    public static SearchProvider CreateSearchProvider()
    {
        return new SearchProvider(k_ProviderId, "Custom Scene")
        {
            filterId = "csp:",
            isExplicitProvider = true,
            fetchItems = (context, items, provider) => FetchItems(context, provider),
            onEnable = OnEnable
        };
    }

    static void OnEnable()
    {
        s_QueryEngine = new QueryEngine<GameObject>(true);
        s_QueryEngine.SetSearchDataCallback(go => new []{ go.name });
        s_QueryEngine.AddFilter("p", OnPropertyFilter, s => s, StringComparison.OrdinalIgnoreCase);

        // Setup all the SearchValue handlers.
        SearchValue.SetupEngine(s_QueryEngine);
    }

    static IEnumerable<SearchItem> FetchItems(SearchContext context, SearchProvider provider)
    {
        // Parse the search query.
        var query = s_QueryEngine.ParseQuery(context.searchQuery);
        if (query == null)
            yield break;

        // If there are any errors, report them.
        if (!query.valid)
        {
            foreach (var queryError in query.errors)
            {
                context.AddSearchQueryError(new SearchQueryError(queryError, context, provider));
            }
            yield break;
        }

        // Open a view on Search's main PropertyDatabases for the duration of the search. By opening
        // a view here, it reduces the time spent opening new views for each game object we filter in OnPropertyFilter.
        using (SearchMonitor.GetView())
        {
            var filteredObjects = query.Apply(SearchUtils.FetchGameObjects());
            foreach (var filteredObject in filteredObjects)
            {
                var instanceId = filteredObject.GetHashCode();
                yield return provider.CreateItem(context, instanceId.ToString(), ~instanceId, filteredObject.name, null, null, null);
            }
        }
    }

    static SearchValue OnPropertyFilter(GameObject go, string propertyName)
    {
        if (!go)
            return SearchValue.invalid;
        if (string.IsNullOrEmpty(propertyName))
            return SearchValue.invalid;

        // Opening a view here will only return the existing instance of the view if it's already open.
        using (var view = SearchMonitor.GetView())
        {
            var documentKey = GetDocumentKey(go);
            var propertyPath = GetPropertyPath(go, propertyName);
            var recordKey = PropertyDatabase.CreateRecordKey(documentKey, PropertyDatabase.CreatePropertyHash(propertyPath));
            if (view.TryLoadProperty(recordKey, out object data) && data is SearchValue sv)
                return sv;

            foreach (var c in EnumerateSubObjects(go))
            {
                var property = FindPropertyValue(c, propertyName);
                if (property.valid)
                {
                    view.StoreProperty(recordKey, property);
                    return property;
                }
            }

            view.StoreProperty(recordKey, SearchValue.invalid);
        }

        return SearchValue.invalid;
    }

    static IEnumerable<UnityEngine.Object> EnumerateSubObjects(GameObject go)
    {
        yield return go;

        var gocs = go.GetComponents<Component>();
        for (int componentIndex = 0; componentIndex < gocs.Length; ++componentIndex)
        {
            var c = gocs[componentIndex];
            if (!c || (c.hideFlags & HideFlags.HideInInspector) == HideFlags.HideInInspector)
                continue;

            yield return c;
        }
    }

    static SearchValue FindPropertyValue(UnityEngine.Object obj, string propertyName)
    {
        var property = FindProperty(obj, propertyName, out var so);
        if (property == null)
            return SearchValue.invalid;

        var v = SearchValue.ConvertPropertyValue(property);
        so?.Dispose();
        return v;
    }

    static SerializedProperty FindProperty(UnityEngine.Object obj, string propertyPath, out SerializedObject so)
    {
        if (!obj)
        {
            so = null;
            return null;
        }

        so = new SerializedObject(obj);
        var property = so.FindProperty(propertyPath);
        if (property != null)
            return property;

        property = so.FindProperty($"m_{propertyPath}");
        if (property != null)
        {
            return property;
        }

        property = so.GetIterator();
        var next = property.NextVisible(true);
        while (next)
        {
            if (property.name.EndsWith(propertyPath, StringComparison.OrdinalIgnoreCase) ||
                (property.name.Contains(" ") && property.name.Replace(" ", "").EndsWith(propertyPath, StringComparison.OrdinalIgnoreCase)))
            {
                return property;
            }
            next = property.NextVisible(property.hasChildren);
        }

        so?.Dispose();
        so = null;
        return null;
    }

    static ulong GetDocumentKey(GameObject go)
    {
        if (!go)
            return ulong.MaxValue;

        if (!go.scene.IsValid() || string.IsNullOrEmpty(go.scene.path))
            return ulong.MaxValue;

        // We return the scene path's hash code as the document key. This is the same key
        // that the SearchMonitor uses to invalidate assets that have been modified.
        return AssetDatabase.AssetPathToGUID(go.scene.path).GetHashCode64();
    }

    static string GetPropertyPath(GameObject go, string propertyName)
    {
        var hierarchyPath = SearchUtils.GetHierarchyPath(go);
        return $"{hierarchyPath}/{propertyName}";
    }

    static ulong GetHashCode64(this string strText)
    {
        if (string.IsNullOrEmpty(strText))
            return 0;
        var s1 = (ulong)strText.Substring(0, strText.Length / 2).GetHashCode();
        var s2 = (ulong)strText.Substring(strText.Length / 2).GetHashCode();
        return s1 << 32 | s2;
    }
}
```

See SearchMonitorView for more details.
