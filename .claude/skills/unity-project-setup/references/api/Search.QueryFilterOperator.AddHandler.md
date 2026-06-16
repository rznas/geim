<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryFilterOperator.AddHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | Callback to handle the operation. Takes a TFilterVariable (the value returned by the filter handler, it will vary for each element), a TFilterConstant (right-hand side value of the operator, which is constant), and a StringComparison option and returns a boolean indicating if the filter passes or not. |

### Returns

**QueryFilterOperator** The current QueryFilterOperator.

### Description

Adds a custom filter operator handler.

<TFilterVariable>: The type of the operator's left-hand side operand. This is the type returned by a filter handler.

<TFilterConstant>: The type of the operator's right-hand side operand.

An operator handler is a function that is executed for a particular operator (for example "=") with specific type requirements. The operator handler is chosen by the return value of the filter handler (see AddFilter) that is identified when parsing the query, and the type of the filter value.

```csharp
// Add a new modulo operator on this filter
var op = "%";
queryEngine.TryGetFilter("id", out var filter);
filter.AddOperator(op)
    .AddHandler((int ev, int fv) => ev % fv == 0)
    .AddHandler((float ev, float fv) => Math.Abs(ev % fv) < 0.00000001f);
```

Here is an example where we override the behavior of the "=" operator for all filters when strings are involved, by doing a regular expression search instead of the traditional match.

```csharp
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_RegexValue
{
    static QueryEngine<MyObjectType> SetupQueryEngine()
    {
        var queryEngine = new QueryEngine<MyObjectType>();
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.AddFilter("n", myObj => myObj.name);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        // Override the = operators to do a regex match
        var op = queryEngine.GetOperator("=");
        op.AddHandler((string ev, string fv) => RegexMatch(fv, ev));

        return queryEngine;
    }

    static bool RegexMatch(string pattern, string source)
    {
        var match = Regex.Match(source, pattern);
        return match.Success;
    }

    static string[] s_Words = new[] { "bob", "cat", "car", "happy", "sad", "squirrel", "pizza", "dog", "over", "bing", "bong" };
    static IEnumerable<MyObjectType> GenerateData(int count)
    {
        for (var i = 0; i < count; ++i)
        {
            var wordCount = Random.Range(1, 6);
            var words = new List<string>();
            for (var j = 0; j < wordCount; ++j)
                words.Add(s_Words[Random.Range(0, s_Words.Length)]);

            var name = string.Join(" ", words);
            var id = $"{Random.Range(0, 1000)}-{s_Words[Random.Range(0, s_Words.Length)]}";
            yield return new MyObjectType() { id = id, name = name };
        }
    }

    static void FilterData(string text, QueryEngine<MyObjectType> queryEngine, IEnumerable<MyObjectType> data)
    {
        var query = queryEngine.ParseQuery(text);
        if (!query.valid)
        {
            foreach (var queryError in query.errors)
                Debug.LogFormat(LogType.Error, LogOption.NoStacktrace, null, $"Error parsing query at position {queryError.index}: {queryError.reason}");

            return;
        }

        var filteredData = query.Apply(data).ToList();
        var escapedText = text.Replace("{", "{{").Replace("}", "}}");
        Debug.LogFormat(LogType.Log, LogOption.NoStacktrace, null, $"Query \"{escapedText}\" yielded {filteredData.Count} result{(filteredData.Count > 1 ? "s" : "")}");
        foreach (var filteredObject in filteredData)
            Debug.LogFormat(LogType.Log, LogOption.NoStacktrace, null, filteredObject.ToString());
    }

    [MenuItem("Examples/QueryEngine/RegexValue")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = SetupQueryEngine();

        var data = GenerateData(100);

        // Find all items with an id that match "^\\d{2}-c.+" (for example, "42-cat" or "99-car")
        // The quotes are required when using special characters like {}.
        FilterData("id=\"^\\d{2}-c.+\"", queryEngine, data);

        // Find all items with a name containing a duplicate (for example, "squirrel cat cat dog" or "pizza pizza dog")
        // The quotes are required when using special characters like {}.
        FilterData("n=(\\S+)\\s+(\\1)", queryEngine, data);
    }

    class MyObjectType
    {
        public string id { get; set; }
        public string name { get; set; } = string.Empty;

        public override string ToString()
        {
            return $"({id}, {name})";
        }
    }
}
```
