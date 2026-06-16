<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchValue.SetupEngine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| queryEngine | QueryEngine to extend with SearchValue comparators and parsers. |

### Description

Extend a QueryEngine to work with SearchValues.

Extending a QueryEngine with SearchValue capabilities can be useful when dealing with SerializedProperties or generic objects. If you can convert your searchable data into SearchValue, you can call SearchValue.SetupEngine to add filtering capabilities for SearchValues. Here is an example of a custom QueryEngine that is extended with SearchValue to support searching SerializedProperties.

```csharp
using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;
using Object = UnityEngine.Object;

static class Example_SearchValue_SetupEngine
{
    static Regex SerializedPropertyRx = new Regex(@"#([\w\d\.\[\]]+)", RegexOptions.Compiled);

    [MenuItem("Examples/SearchValue/SetupEngine")]
    public static void RunExample()
    {
        var testData = GenerateTestData(100);
        var queryEngine = SetupQueryEngine();

        // Filter by layer. Since layer is an int, everything is handled by the QueryEngine.
        FilterData("layer<3", testData, queryEngine);

        // Filter by SerializedProperty. Since we called SearchValue.SetupEngine,
        // all filter operator handlers for the types supported by SearchValue have been added on
        // the QueryEngine.
        FilterData("#MyComponent.value=1", testData, queryEngine);
        FilterData("#MyComponent.color=#ff0000ff", testData, queryEngine);

        ClearTestData(testData);
    }

    static QueryEngine<GameObject> SetupQueryEngine()
    {
        // Create the QueryEngine
        var queryEngine = new QueryEngine<GameObject>();

        // Setup various operator handlers and type parsers to work with SearchValues.
        // SearchValues are useful when dealing with SerializedProperties of generic objects
        // since it supports many built-in types like strings, floats, colors, vectors, etc.
        // See SearchValue.ValueType.
        SearchValue.SetupEngine(queryEngine);

        // Add a filter for layers
        queryEngine.AddFilter("layer", OnLayerFilter);

        // Add filters for searching Serialized Properties.
        queryEngine.AddFilter("p", OnPropertyFilter, s => s, StringComparison.OrdinalIgnoreCase);
        queryEngine.AddFilter(SerializedPropertyRx, OnPropertyFilter, StringComparison.OrdinalIgnoreCase);

        return queryEngine;
    }

    static void FilterData(string query, IEnumerable<GameObject> data, QueryEngine<GameObject> queryEngine)
    {
        var parsedQuery = queryEngine.ParseQuery(query);
        if (!parsedQuery.valid)
        {
            foreach (var queryError in parsedQuery.errors)
            {
                Debug.LogError($"Error while parsing query: \"{queryError.reason}\" at position {queryError.index}");
            }
            return;
        }

        var results = parsedQuery.Apply(data);
        Debug.LogFormat(LogType.Log, LogOption.NoStacktrace, null, $"Results for query \"{query}\":\n{string.Join("\n", results)}");
    }

    static int OnLayerFilter(GameObject go)
    {
        return go.layer;
    }

    // This method will find a SerializedProperty by name and return a SearchValue for this property
    // so that it can be compared using the built-in filter operators like =, <, >, etc.
    static SearchValue OnPropertyFilter(GameObject go, string propertyName)
    {
        if (!go)
            return SearchValue.invalid;
        if (string.IsNullOrEmpty(propertyName))
            return SearchValue.invalid;

        // Try to find a component that matches the type, if it was specified.
        var componentIndex = propertyName.IndexOf('.');
        if (componentIndex != -1)
        {
            var componentType = propertyName.Substring(0, componentIndex);
            var component = go.GetComponent(componentType);
            if (component)
            {
                var property = FindPropertyValue(component, propertyName.Substring(componentIndex + 1));
                if (property.valid)
                {
                    return property;
                }
            }
        }

        // Go over each component to find a property that matches.
        foreach (var c in EnumerateSubObjects(go))
        {
            var property = FindPropertyValue(c, propertyName);
            if (property.valid)
            {
                return property;
            }
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

        // Convert a serialized property into a SearchValue.
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

        // Try to find the property directly
        var property = so.FindProperty(propertyPath);
        if (property != null)
            return property;

        // Try to find the property by prepending "m_"
        property = so.FindProperty($"m_{propertyPath}");
        if (property != null)
        {
            return property;
        }

        // Iterator over all properties and try to match their name.
        property = so.GetIterator();
        var next = property.NextVisible(true);
        while (next)
        {
            var propertyName = property.name.Replace(" ", "");
            if (propertyName.EndsWith(propertyPath, StringComparison.OrdinalIgnoreCase))
            {
                return property;
            }
            next = property.NextVisible(property.hasChildren);
        }

        so?.Dispose();
        so = null;

        return null;
    }

    static IEnumerable<GameObject> GenerateTestData(int count)
    {
        var objects = new List<GameObject>();
        for (var i = 0; i < count; i++)
        {
            var obj = new GameObject();
            obj.name = i.ToString();
            obj.layer = i % 5;
            var comp = obj.AddComponent<MyComponent>();
            comp.value = i;
            comp.color = GetColor(i);
            objects.Add(obj);
        }
        return objects;
    }

    static Color GetColor(int index)
    {
        switch (index % 5)
        {
            case 0: return Color.red;
            case 1: return Color.green;
            case 2: return Color.blue;
            case 3: return Color.white;
            default: return Color.black;
        }
    }

    static void ClearTestData(IEnumerable<GameObject> objects)
    {
        foreach (var gameObject in objects)
        {
            Object.DestroyImmediate(gameObject);
        }
    }
}
```

Here is the custom component used:

```csharp
using UnityEngine;

public class MyComponent : MonoBehaviour
{
    public float value;
    public Color color;
}
```
