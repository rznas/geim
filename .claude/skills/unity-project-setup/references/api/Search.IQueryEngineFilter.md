<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryEngineFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for the QueryEngine filters.

When you add a new filter on a QueryEngine, you receive a filter object that implements the interface IQueryEngineFilter. You can modify this filter to override the global behaviors of the QueryEngine. For example, you can add type parsers or operators that are specific to this filter.

```csharp
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_IQueryEngineFilter
{
    static List<MyObjectType> s_Data;

    static QueryEngine<MyObjectType> SetupQueryEngine()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();

        // Add a filter for MyObjectType.position that supports equals and not equals
        queryEngine.AddFilter("p", myObj => myObj.position, new[] { "=", "!=" });

        // Add a new type parser for Vector2 written as "[x, y]", but only for this filter.
        // This type parser will not affect other filters.
        queryEngine.TryGetFilter("p", out var filter);
        filter.AddTypeParser(s =>
        {
            // If the format requirement is not met, return a failure.
            if (!s.StartsWith("[") || !s.EndsWith("]"))
                return ParseResult<Vector2>.none;

            var trimmed = s.Trim('[', ']');
            var vectorTokens = trimmed.Split(',');
            var vectorValues = vectorTokens.Select(token => float.Parse(token, CultureInfo.InvariantCulture.NumberFormat)).ToList();
            if (vectorValues.Count != 2)
                return ParseResult<Vector2>.none;
            var vector = new Vector2(vectorValues[0], vectorValues[1]);

            // When the conversion succeeds, return a success.
            return new ParseResult<Vector2>(true, vector);
        });

        // Override global operators with specific operator handlers for this filter
        filter.AddOperator("=").AddHandler((Vector2 ev, Vector2 fv) => ev == fv);
        filter.AddOperator("!=").AddHandler((Vector2 ev, Vector2 fv) => ev != fv);

        // Set up what data from objects of type MyObjectType will be matched against search words
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        return queryEngine;
    }

    [MenuItem("Examples/IQueryEngineFilter/IQueryEngineFilter")]
    public static void RunExample()
    {
        s_Data = GenerateExampleData();
        var queryEngine = SetupQueryEngine();
        TestFiltering(queryEngine, s_Data);
    }

    static void TestFiltering(QueryEngine<MyObjectType> queryEngine, IEnumerable<MyObjectType> inputData)
    {
        var vec = new Vector2(1, 0);
        // Find objects that are at position [1, 0]
        var filteredData = FilterData("p=[1,0]", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.position == vec));

        //Find objects that are not at position [1, 0]
        filteredData = FilterData("p!=[1,0]", queryEngine, inputData);
        ValidateData(filteredData, s_Data.Where(myObj => myObj.position != vec));
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
            new MyObjectType { id = 3, name = "Test 4", position = new Vector2(1.2f, 0), active = false },
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
| metaInfo | Additional information specific to the filter. |
| operators | Collection of QueryFilterOperators specific for the filter. |
| overridesStringComparison | Indicates if the filter overrides the global string comparison options. |
| parameterType | The type of the constant parameter passed to the filter, if used. |
| regexToken | The regular expression that matches the filter. Matches what precedes the operator in a filter (for example. "id" in "id>=2"). |
| stringComparison | The string comparison options of the filter. |
| supportedOperators | List of supported operators. |
| token | The identifier of the filter. Typically what precedes the operator in a filter (for example, "id" in "id>=2"). |
| type | The type of the data that is compared by the filter. |
| usesParameter | Indicates if the filter uses a parameter. |
| usesRegularExpressionToken | Indicates if the filter uses a regular expression token or not. |
| usesResolver | Indicates if the filter uses a resolver function. |

### Public Methods

| Method | Description |
| --- | --- |
| AddOperator | Add a custom filter operator specific to the filter. |
| AddOrUpdateMetaInfo | Add or update additional information specific to the filter. |
| AddTypeParser | Add a type parser specific to the filter. |
| ClearMetaInfo | Removes all additional information specific to the filter. |
| RemoveMetaInfo | Remove information on the filter. |
| RemoveOperator | Remove a custom operator specific to the filter. |
| SetNestedQueryTransformer | Sets the filter's nested query transformer function. This function takes the result of a nested query and extracts the necessary data to compare with the filter. |
