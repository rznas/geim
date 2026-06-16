<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryFilterOperator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A QueryFilterOperator defines a boolean operator between a value returned by a filter and an operand inputted in the search query.

You get an object of this type whenever you add a new operator on a QueryEngine or IQueryEngineFilter.

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryFilterOperator
{
    static List<MyObjectType> s_Data;

    static QueryEngine<MyObjectType> SetupQueryEngine()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();

        // Add a filter for MyObjectType.id that supports all operators
        queryEngine.AddFilter("id", myObj => myObj.id);

        // Add a new modulo operator on this filter
        var op = "%";
        queryEngine.TryGetFilter("id", out var filter);
        filter.AddOperator(op)
            .AddHandler((int ev, int fv) => ev % fv == 0)
            .AddHandler((float ev, float fv) => Math.Abs(ev % fv) < 0.00000001f);

        return queryEngine;
    }

    [MenuItem("Examples/QueryFilterOperator/Class")]
    public static void RunExample()
    {
        s_Data = GenerateExampleData();
        var queryEngine = SetupQueryEngine();
        TestFiltering(queryEngine, s_Data);
    }

    static void TestFiltering(QueryEngine<MyObjectType> queryEngine, IEnumerable<MyObjectType> inputData)
    {
        // Find objects that have an even id
        var filteredData = FilterData("id%2", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.id % 2 == 0));

        // Find objects that have an odd id
        filteredData = FilterData("-id%2", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.id % 2 != 0));
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
| token | The operator identifier. |
| valid | Indicates if this filter operator is valid. |

### Public Methods

| Method | Description |
| --- | --- |
| AddHandler | Adds a custom filter operator handler. |
