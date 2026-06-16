<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.AddOperator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| op | The operator identifier. |

### Description

Adds a custom filter operator.

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_AddOperator
{
    static List<MyObjectType> s_Data;

    [MenuItem("Examples/QueryEngine/AddOperator")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        // Add a new operator token
        const string op = "%";
        queryEngine.AddOperator(op);

        // Define what this operator does, and which types it operates on.
        queryEngine.AddOperatorHandler(op, (int ev, int fv) => ev % fv == 0);

        s_Data = new List<MyObjectType>()
        {
            new MyObjectType { id = 0, name = "Test 1", position = new Vector2(0, 0), active = false },
            new MyObjectType { id = 1, name = "Test 2", position = new Vector2(0, 1), active = true },
            new MyObjectType { id = 2, name = "Test 3", position = new Vector2(1, 0), active = false },
            new MyObjectType { id = 3, name = "Test 4", position = new Vector2(1.2f, 0), active = false },
        };

        // Find all items that have an id divisible by 2
        var query = queryEngine.ParseQuery("id%2");
        var filteredData = query.Apply(s_Data).ToList();
        Debug.Assert(filteredData.Count == 2, $"There should be 2 items in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(s_Data[0]), "Test 1 should be in the list as its id is divisible by 2.");
        Debug.Assert(filteredData.Contains(s_Data[2]), "Test 3 should be in the list as its id is divisible by 2.");

        {
            // Get an operator based on its token and add some handlers on it.
            var operatorToken = "%";
            var operatorObject = queryEngine.GetOperator(operatorToken);
            if (operatorObject.valid)
                operatorObject.AddHandler((float ev, float fv) => Math.Abs(ev % fv) < 0.0000001f);
        }

        {
            // Remove an operator based on its token
            var operatorToken = "%";
            queryEngine.RemoveOperator(operatorToken);
        }

        query = queryEngine.ParseQuery("id%2");
        filteredData = query.Apply(s_Data).ToList();
        Debug.Assert(filteredData.Count == 0, $"There should be 0 items in the filtered list but found {filteredData.Count} items.");
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
