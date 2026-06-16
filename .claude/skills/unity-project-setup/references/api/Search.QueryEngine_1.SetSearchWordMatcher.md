<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.SetSearchWordMatcher.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| wordMatcher | The search word matching function. The first parameter is the search word. The second parameter is a boolean for exact match or not. The third parameter is the StringComparison options. The fourth parameter is an element of the array returned by the search data callback. The function returns true for a match or false for no match. |

### Description

Set the search word matching function to be used instead of the default one. Set to null to use the default.

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_SetSearchWordMatcher
{
    static List<MyObjectType> s_Data;

    [MenuItem("Examples/QueryEngine/SetSearchWordMatcher")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        // Set a lowercase word matching function
        queryEngine.SetSearchWordMatcher((searchWord, isExact, comparisonOption, searchData) =>
        {
            var searchWordLower = searchWord.ToLowerInvariant();
            var searchDataLower = searchData.ToLowerInvariant();
            if (isExact)
                return searchDataLower.Equals(searchWordLower, StringComparison.Ordinal);
            return searchDataLower.IndexOf(searchWordLower, StringComparison.Ordinal) >= 0;
        });

        s_Data = new List<MyObjectType>()
        {
            new MyObjectType { id = 0, name = "Test with lower", position = new Vector2(0, 0), active = false },
            new MyObjectType { id = 1, name = "Test With Upper", position = new Vector2(0, 1), active = true }
        };

        // Find all items that have the word "with" (lowercase and uppercase, because of our word matcher)
        var query = queryEngine.ParseQuery("with");
        var filteredData = query.Apply(s_Data).ToList();
        Debug.Assert(filteredData.Count == 2, $"There should be 2 items in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(s_Data[0]), "First item should be in the list.");
        Debug.Assert(filteredData.Contains(s_Data[1]), "Second item should be in the list.");
    }

    class MyObjectType
    {
        public int id { get; set; }
        public string name { get; set; } = string.Empty;
        public Vector2 position { get; set; } = Vector2.zero;
        public bool active { get; set; }

        public override string ToString()
        {
            return $"({id}, {name}, ({position.x}, {position.y}), {active})";
        }
    }
}
```
