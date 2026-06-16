<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryValidationOptions-validateFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Boolean indicating if filters should be validated. Default is false.

If true and skipUnknownFilters is false, unknown filters will generate errors if no default handler is provided with QueryEngine.SetDefaultFilter.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryValidationOptions_validateFilters
{
    [MenuItem("Examples/QueryValidationOptions/validateFilters")]
    public static void RunExample()
    {
        // Set up the query validation options with no filter validation
        var validationOptions = new QueryValidationOptions { validateFilters = false };

        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>(validationOptions);
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        // Parse a query with the filter "id". There shouldn't be any errors
        var query = queryEngine.ParseQuery("id>10");
        Debug.Assert(query.valid, $"Query \"{query.text}\" should be valid.");

        // Because the QueryEngine doesn't validate filters, no other filters will generate an error when parsed.
        query = queryEngine.ParseQuery("name:MyName");
        Debug.Assert(query.valid, $"Query \"{query.text}\" should be valid.");
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
