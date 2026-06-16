<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryValidationOptions-skipUnknownFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Boolean indicating if unknown filters should be skipped.

If true, unknown filters are skipped. If false and validateFilters is true, unknown filters will generate errors if no default handler is provided with QueryEngine.SetDefaultFilter.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryValidationOptions_skipUnknownFilters
{
    [MenuItem("Examples/QueryValidationOptions/skipUnknownFilters")]
    public static void RunExample()
    {
        // Set up the query validation options with filter validation and unknown filter skipping.
        var validationOptions = new QueryValidationOptions { validateFilters = true, skipUnknownFilters = true};

        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>(validationOptions);
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        var dataset = new[]
        {
            new MyObjectType() { id = 0, name = "Test 1" },
            new MyObjectType() { id = 10, name = "Test 2" }
        };

        // Parse a query with the filter "id". There shouldn't be any errors
        var query = queryEngine.ParseQuery("id>10");
        Debug.Assert(query.valid, $"Query \"{query.text}\" should be valid.");

        // Because the QueryEngine is skipping unknown filter, there should not be errors for unknown filters
        // but it should still get results for filters that are known. If validateFilters were set
        // to false, this query would yield no results since the generated filter node for the unknown filter
        // would automatically return false for any elements of the filtered data set.
        query = queryEngine.ParseQuery("id<10 name:MyName");
        Debug.Assert(query.valid, $"Query \"{query.text}\" should be valid.");
        var filteredData = query.Apply(dataset).ToList();
        Debug.Assert(filteredData.Count == 1, $"There should be 1 item in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(dataset[0]), "Test 1 should be in the filtered list since its id is < 10");
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
