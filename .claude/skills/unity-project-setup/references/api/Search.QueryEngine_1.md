<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A QueryEngine defines how to build a query from an input string. It can be customized to support custom filters and operators.

<TData>: The filtered data type.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine
{
    static List<MyObjectType> s_Data;

    static QueryEngine<MyObjectType> SetupQueryEngine()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();

        // Add a filter for MyObjectType.id that supports all operators
        queryEngine.AddFilter("id", myObj => myObj.id);
        // Add a filter for MyObjectType.name that supports only contains (:), equal (=) and not equal (!=)
        queryEngine.AddFilter("n", myObj => myObj.name, new[] { ":", "=", "!=" });
        // Add a filter for MyObjectType.active that supports only equal and not equal
        queryEngine.AddFilter("a", myObj => myObj.active, new[] { "=", "!=" });
        // Add a filter for the computed property magnitude that supports equal, not equal, lesser, greater, lesser or equal and greater or equal.
        queryEngine.AddFilter("m", myObj => myObj.position.magnitude, new[] { "=", "!=", "<", ">", "<=", ">=" });

        // Set up what data from objects of type MyObjectType will be matched against search words
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        return queryEngine;
    }

    [MenuItem("Examples/QueryEngine/Class")]
    public static void RunExample()
    {
        s_Data = GenerateExampleData();
        var queryEngine = SetupQueryEngine();
        TestFiltering(queryEngine, s_Data);
    }

    static void TestFiltering(QueryEngine<MyObjectType> queryEngine, IEnumerable<MyObjectType> inputData)
    {
        // Find objects that have an id > 2 and are active
        var filteredData = FilterData("id>2 a=true", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.id > 2 && myObj.active));

        // Find objects that are not active and have a name that contains Test
        filteredData = FilterData("a=false n:Test", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.name.Contains("Test") && !myObj.active));

        // Find objects that have a magnitude higher than 1 or the id 0.
        filteredData = FilterData("m>1 or id=0", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.position.magnitude > 1f || myObj.id == 0));
    }

    static IEnumerable<MyObjectType> FilterData(string inputQuery, QueryEngine<MyObjectType> queryEngine, IEnumerable<MyObjectType> inputData)
    {
        // Parse the query string into a query operation
        var query = queryEngine.ParseQuery(inputQuery);

        // If the query is not valid, print all errors and return an empty data set
        if (!query.valid)
        {
            foreach (var queryError in query.errors)
            {
                Debug.LogFormat(LogType.Error, LogOption.NoStacktrace, null, $"Error parsing input at {queryError.index}: {queryError.reason}");
            }

            return new List<MyObjectType>();
        }

        // Apply the query on a data set and get the filtered result.
        var filteredData = query.Apply(inputData);
        return filteredData;
    }

    static void ValidateData(IEnumerable<MyObjectType> filteredData, IEnumerable<MyObjectType> expectedData)
    {
        var filteredDataArray = filteredData.ToArray();
        var expectedDataArray = expectedData.ToArray();
        Debug.Assert(filteredDataArray.Length == expectedDataArray.Length, $"Filtered data should have {expectedDataArray.Length} elements.");
        if (filteredDataArray.Length != expectedDataArray.Length)
            return;

        for (var i = 0; i < expectedDataArray.Length; i++)
        {
            Debug.Assert(filteredDataArray[i] == expectedDataArray[i], $"{filteredDataArray[i]} should be equal to {expectedDataArray[i]}");
        }
    }

    static List<MyObjectType> GenerateExampleData()
    {
        var data = new List<MyObjectType>()
        {
            new MyObjectType { id = 0, name = "Test 1", position = new Vector2(0, 0), active = false },
            new MyObjectType { id = 1, name = "Test 2", position = new Vector2(0, 1), active = true },
            new MyObjectType { id = 2, name = "Test 3", position = new Vector2(1, 0), active = false },
            new MyObjectType { id = 3, name = "Test 4", position = new Vector2(1, 1), active = true },
            new MyObjectType { id = 4, name = "Test 5", position = new Vector2(2, 0), active = false },
            new MyObjectType { id = 5, name = "Test 6", position = new Vector2(0, 2), active = true }
        };

        return data;
    }

    /// <summary>
    /// Custom type. This is the type of objects that will be searched by the QueryEngine.
    /// </summary>
    class MyObjectType
    {
        public int id { get; set; }
        public string name { get; set; }
        public Vector2 position { get; set; }
        public bool active { get; set; }

        public MyObjectType()
        {
            id = 0;
            name = "";
            position = Vector2.zero;
            active = false;
        }

        public override string ToString()
        {
            return $"({id}, {name}, ({position.x}, {position.y}), {active})";
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| globalStringComparison | Global string comparison options for word matching and filter handling (if not overridden). |
| searchDataCallback | The callback used to get the data to match to the search words. |
| searchDataOverridesStringComparison | Indicates if word/phrase matching uses searchDataStringComparison or not. |
| searchDataStringComparison | String comparison options for word/phrase matching. |
| searchWordMatcher | The function used to match the search data against the search words. |
| skipIncompleteFilters | Boolean. Indicates if incomplete filters should be skipped. If true, filters are skipped. If false and validateFilters is true, incomplete filters will generate errors when parsed. |
| skipUnknownFilters | Boolean. Indicates if unknown filters should be skipped. If true, unknown filters are skipped. If false and validateFilters is true, unknown filters will generate errors if no default filter handler is provided. |
| validateFilters | Get or set if the engine must validate filters when parsing the query. Defaults to true. |

### Constructors

| Constructor | Description |
| --- | --- |
| QueryEngine_1 | Constructs a new QueryEngine. |

### Public Methods

| Method | Description |
| --- | --- |
| AddFilter | Adds a new custom filter. |
| AddFiltersFromAttribute | Adds all custom filters that are identified with the method attribute TFilterAttribute. |
| AddNestedQueryAggregator | Adds a new nested query aggregator. An aggregator is an operation that can be applied on a nested query to aggregate the results of the nested query according to certain criteria. |
| AddOperator | Adds a custom filter operator. |
| AddOperatorHandler | Adds a custom filter operator handler. |
| AddTypeParser | Adds a type parser that parses a string and returns a custom type. Used by custom operator handlers (see AddOperatorHandler). |
| ClearFilters | Removes all filters that were added on the QueryEngine. |
| GetAllFilters | Get all filters added on this QueryEngine. |
| GetOperator | Get a custom operator added on the QueryEngine. |
| ParseQuery | Parses a query string into a ParsedQuery operation. This ParsedQuery operation can then be used to filter any data set of type TData. |
| RemoveFilter | Removes a custom filter. |
| RemoveOperator | Removes a custom operator that was added on the QueryEngine. |
| SetDefaultFilter | Sets the default filter handler for filters that were not registered. |
| SetDefaultParamFilter | Sets the default filter handler for function filters that were not registered. |
| SetFilterNestedQueryTransformer | Sets a filter's nested query transformer function. This function takes the result of a nested query and extracts the necessary data to compare with the filter. |
| SetGlobalStringComparisonOptions | Sets global string comparison options. Used for word matching and filter handling (unless overridden by filter). |
| SetNestedQueryHandler | Sets the function that will handle nested queries. Only one handler can be set. |
| SetSearchDataCallback | Sets the callback used to fetch the data that is matched against the search words. |
| SetSearchWordMatcher | Set the search word matching function to be used instead of the default one. Set to null to use the default. |
| TryGetFilter | Get a filter by its token. |
