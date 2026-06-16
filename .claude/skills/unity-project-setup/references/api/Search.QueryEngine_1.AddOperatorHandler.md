<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.AddOperatorHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| op | The filter operator. |
| handler | Callback to handle the operation. Takes a TFilterVariable (the value returned by the filter handler, it will vary for each element), a TFilterConstant (right-hand side value of the operator, which is constant), and a StringComparison option and returns a boolean indicating if the filter passes or not. |

### Description

Adds a custom filter operator handler.

<TFilterVariable>: The type of the operator's left-hand side operand. This is the type returned by a filter handler.

<TFilterConstant>: The type of the operator's right-hand side operand.

An operator handler is a function that is executed for a particular operator (for example "=") with specific type requirements. The operator handler is chosen by the return value of the filter handler (see AddFilter) that is identified when parsing the query, and the type of the filter value.

This function can be used to add operator handlers to a new custom operator (see AddOperator for the full example):

```csharp
// Add a new operator token
const string op = "%";
queryEngine.AddOperator(op);

// Define what this operator does, and which types it operates on.
queryEngine.AddOperatorHandler(op, (int ev, int fv) => ev % fv == 0);
```

But it can also be used to register new operator handlers on existing operators:

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_AddOperatorHandler
{
    static List<MyObjectType> s_Data;

    [MenuItem("Examples/QueryEngine/AddOperatorHandler")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.AddFilter("prop", myObj => myObj.property);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        // Set the global string comparison options (default is OrdinalIgnoreCase)
        queryEngine.SetGlobalStringComparisonOptions(StringComparison.Ordinal);

        // Define new handlers for existing operators, but with new types
        queryEngine.AddOperatorHandler("=", (Property ev, int fv) => HandleIntType(ev, fv, (propValue, filterValue) => propValue == filterValue));
        queryEngine.AddOperatorHandler("!=", (Property ev, int fv) => HandleIntType(ev, fv, (propValue, filterValue) => propValue != filterValue));
        queryEngine.AddOperatorHandler("<", (Property ev, int fv) => HandleIntType(ev, fv, (propValue, filterValue) => propValue < filterValue));
        queryEngine.AddOperatorHandler(">", (Property ev, int fv) => HandleIntType(ev, fv, (propValue, filterValue) => propValue > filterValue));
        queryEngine.AddOperatorHandler("<=", (Property ev, int fv) => HandleIntType(ev, fv, (propValue, filterValue) => propValue <= filterValue));
        queryEngine.AddOperatorHandler(">=", (Property ev, int fv) => HandleIntType(ev, fv, (propValue, filterValue) => propValue >= filterValue));

        // New handlers with support for the global string comparison options
        queryEngine.AddOperatorHandler(":", (Property ev, string fv, StringComparison options) => HandleStringType(ev, fv, (propValue, filterValue) => propValue.IndexOf(filterValue, options) >= 0));
        queryEngine.AddOperatorHandler("=", (Property ev, string fv, StringComparison options) => HandleStringType(ev, fv, (propValue, filterValue) => propValue.Equals(filterValue, options)));
        queryEngine.AddOperatorHandler("!=", (Property ev, string fv, StringComparison options) => HandleStringType(ev, fv, (propValue, filterValue) => !propValue.Equals(filterValue, options)));

        s_Data = new List<MyObjectType>()
        {
            new MyObjectType { id = 0, property = new Property("size", PropertyType.Integer, 64) },
            new MyObjectType { id = 1, property = new Property("size", PropertyType.Integer, 128) },
            new MyObjectType { id = 2, property = new Property("tag", PropertyType.String, "item") },
            new MyObjectType { id = 3, property = new Property("tag", PropertyType.String, "car item") },
            new MyObjectType { id = 3, property = new Property("tag", PropertyType.String, "42") }
        };

        // Find all items that have a property with an integer value < 100
        var query = queryEngine.ParseQuery("prop<100");
        var filteredData = query.Apply(s_Data).ToList();
        Debug.Assert(filteredData.Count == 1, $"There should be 1 item in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(s_Data[0]), "Test 1 should be in the list as its property value is < 100.");

        // Find all items that have a property with a string value that contains "Item".
        // In this case, since the comparison option is Ordinal, we test the casing.
        query = queryEngine.ParseQuery("prop:Item");
        filteredData = query.Apply(s_Data).ToList();
        Debug.Assert(filteredData.Count == 0, $"There should be 0 item in the filtered list but found {filteredData.Count} items.");
    }

    static bool HandleIntType(Property prop, int value, Func<int, int, bool> operatorHandler)
    {
        if (prop.type != PropertyType.Integer)
            return false;
        if (!(prop.value is int i))
            return false;
        return operatorHandler(i, value);
    }

    static bool HandleStringType(Property prop, string value, Func<string, string, bool> operatorHandler)
    {
        if (prop.type != PropertyType.String)
            return false;
        if (!(prop.value is string s))
            return false;
        return operatorHandler(s, value);
    }

    enum PropertyType
    {
        Integer,
        String
    }
    struct Property
    {
        public string name { get; }
        public PropertyType type { get; }
        public object value { get; set; }

        public Property(string name, PropertyType type, object value)
        {
            this.name = name;
            this.type = type;
            this.value = value;
        }
    }

    class MyObjectType
    {
        public int id { get; set; }
        public string name { get; set; } = string.Empty;
        public Vector2 position { get; set; } = Vector2.zero;
        public bool active { get; set; }
        public Property property { get; set; }

        public override string ToString()
        {
            return $"({id}, {name}, ({position.x}, {position.y}), {active})";
        }
    }
}
```
