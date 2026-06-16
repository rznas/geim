<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.AddTypeParser.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parser | Callback used to determine if a string can be converted into TFilterConstant. Takes a string and returns a ParseResult object. This contains the success flag, and the converted value if it succeeds. |

### Description

Adds a type parser that parses a string and returns a custom type. Used by custom operator handlers (see AddOperatorHandler).

<TFilterConstant>: The type of the parsed operand that is on the right-hand side of the operator.

```csharp
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_AddTypeParser
{
    static List<MyObjectType> s_Data;

    [MenuItem("Examples/QueryEngine/AddTypeParser")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.AddFilter("p", myObj => myObj.position, new[] { "=", "!=" });
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        // Add a new type parser for Vector2 written as "[x, y]"
        queryEngine.AddTypeParser<Vector2>(s =>
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
        queryEngine.AddOperatorHandler("=", (Vector2 ev, Vector2 fv) => ev == fv);
        queryEngine.AddOperatorHandler("!=", (Vector2 ev, Vector2 fv) => ev != fv);

        s_Data = new List<MyObjectType>()
        {
            new MyObjectType { id = 0, name = "Test 1", position = new Vector2(0, 0), active = false },
            new MyObjectType { id = 1, name = "Test 2", position = new Vector2(0, 1), active = true },
            new MyObjectType { id = 2, name = "Test 3", position = new Vector2(1, 0), active = false },
            new MyObjectType { id = 3, name = "Test 4", position = new Vector2(1.2f, 0), active = false },
        };

        // Find all items that are located at position [0, 1]
        var query = queryEngine.ParseQuery("p=\"[0, 1]\"");
        var filteredData = query.Apply(s_Data).ToList();
        Debug.Assert(filteredData.Count == 1, $"There should be 1 item in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(s_Data[1]), "Test 2 should be in the list as its position [0, 1].");
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
