<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.ParseQuery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | The query input string. |
| useFastYieldingQueryHandler | Set to true to get a query that yields null results for elements that don't pass the query, instead of only the elements that pass the query. |

### Returns

**ParsedQuery<TData>** ParsedQuery operation of type TData.

### Description

Parses a query string into a ParsedQuery operation. This ParsedQuery operation can then be used to filter any data set of type TData.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_ParseQuery
{
    static List<MyObjectType> s_Data;

    [MenuItem("Examples/QueryEngine/ParseQuery")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>();
        queryEngine.AddFilter("id", myObj => myObj.id);
        queryEngine.SetSearchDataCallback(myObj => new[] { myObj.id.ToString(), myObj.name });

        s_Data = new List<MyObjectType>()
        {
            new MyObjectType { id = 0, name = "Test 1", position = new Vector2(0, 0), active = false },
            new MyObjectType { id = 1, name = "Test 2", position = new Vector2(0, 1), active = true },
            new MyObjectType { id = 2, name = "Test 3", position = new Vector2(1, 0), active = false },
            new MyObjectType { id = 3, name = "Test 4", position = new Vector2(1.2f, 0), active = true },
        };

        
        // Call ParseQuery to get a query that can be applied on any data set that matches the QueryEngine's type
        var query = queryEngine.ParseQuery("id<2");

        // You can test the validity of the query, and check for any parsing errors
        if (!query.valid)
        {
            foreach (var queryError in query.errors)
            {
                Debug.LogError($"Parsing error at ${queryError.index}: {queryError.reason}.");
            }
        }
        

        // Use this query to filter a data set.
        var filteredData = query.Apply(s_Data).ToList();

        // FilteredData now contains only the elements that satisfy the query.
        Debug.Assert(filteredData.Count == 2, $"There should be 2 items in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(s_Data[0]), "Test 1 should be in the list as its id is < 2.");
        Debug.Assert(filteredData.Contains(s_Data[1]), "Test 2 should be in the list as its id is < 2.");
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

### Parameters

| Parameter | Description |
| --- | --- |
| text | The query input string. |
| queryHandlerFactory | A factory object that creates query handlers of type TQueryHandler. See IQueryHandlerFactory. |

### Returns

**void** ParsedQuery operation of type TData and TPayload.

### Description

Parses a query string into a ParsedQuery operation. This ParsedQuery operation can then be used to filter any data set of type TData.

This overload allows you to define your own query handler, which is a class that you can implement to do your own filtering based on the query graph.

```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_QueryEngine_ParseQuery_WithHandler
{
    // Not a true database, this is only an example to show that you can use
    // anything with ParseQuery to implement your own filtering.
    static Database s_Database = new Database();

    [MenuItem("Examples/QueryEngine/ParseQuery_WithHandler")]
    public static void RunExample()
    {
        // Set up the query engine
        var queryEngine = new QueryEngine<MyObjectType>(new QueryValidationOptions(){validateFilters = false, skipUnknownFilters = false});

        // Set up the query handler factory
        var factory = new DefaultQueryHandlerFactory(queryEngine);

        // Call ParseQuery to get a query that can be applied on any payload that matches the QueryEngine's type
        var query = queryEngine.ParseQuery("id=2 or v>50", factory);

        // You can test the validity of the query, and check for any parsing errors
        if (!query.valid)
        {
            foreach (var queryError in query.errors)
            {
                Debug.LogError($"Parsing error at ${queryError.index}: {queryError.reason}.");
            }
        }

        // Use this query to filter a payload.
        var filteredData = query.Apply(s_Database).ToList();

        // FilteredData now contains only the elements that satisfy the query.
        Debug.Assert(filteredData.Count == 2, $"There should be 2 items in the filtered list but found {filteredData.Count} items.");
        Debug.Assert(filteredData.Contains(s_Database.data.ElementAt(2)), "Test 3 should be in the list as its id is == 2.");
        Debug.Assert(filteredData.Contains(s_Database.data.ElementAt(3)), "Test 4 should be in the list as its value is > 50.");
    }

    class MyObjectType
    {
        public int id { get; set; }
        public string name { get; set; } = string.Empty;
        public float value { get; set; } = 0.0f;

        public override string ToString()
        {
            return $"({id}, {name}, {value})";
        }
    }

    class Database
    {
        public IEnumerable<MyObjectType> data { get; private set; }

        public Database()
        {
            data = new List<MyObjectType>()
            {
                new MyObjectType { id = 0, name = "Test 1", value = 42f },
                new MyObjectType { id = 1, name = "Test 2", value = 12f },
                new MyObjectType { id = 2, name = "Test 3", value = 0.1f },
                new MyObjectType { id = 3, name = "Test 4", value = 100.0f }
            };
        }
    }

    class DefaultQueryHandlerFactory : IQueryHandlerFactory<MyObjectType, DefaultHandler, Database>
    {
        QueryEngine<MyObjectType> m_Engine;

        public DefaultQueryHandlerFactory(QueryEngine<MyObjectType> engine)
        {
            m_Engine = engine;
        }

        public DefaultHandler Create(QueryGraph graph, ICollection<QueryError> errors)
        {
            ValidateGraph(graph.root, errors);
            if (errors.Count > 0)
                return null;

            var dataWalker = new DefaultHandler();
            dataWalker.Initialize(m_Engine, graph, errors);
            return dataWalker;
        }

        private static void ValidateGraph(IQueryNode root, ICollection<QueryError> errors)
        {
            if (root == null)
                return;

            ValidateNode(root, errors);
            if (root.leaf || root.children == null)
                return;

            foreach (var child in root.children)
            {
                ValidateGraph(child, errors);
            }
        }

        private static void ValidateNode(IQueryNode node, ICollection<QueryError> errors)
        {
            switch (node.type)
            {
                case QueryNodeType.Aggregator:
                case QueryNodeType.FilterIn:
                case QueryNodeType.Intersection:
                case QueryNodeType.Union:
                case QueryNodeType.NestedQuery:
                {
                    errors.Add(new QueryError(node.token.position, node.token.length, "Nested queries are not supported."));
                    break;
                }
            }
        }
    }

    class DefaultHandler : IQueryHandler<MyObjectType, Database>
    {
        QueryGraph m_EvaluationGraph;

        public void Initialize(QueryEngine<MyObjectType> engine, QueryGraph graph, ICollection<QueryError> errors)
        {
            if (graph != null && !graph.empty)
                m_EvaluationGraph = graph;
        }

        public IEnumerable<MyObjectType> Eval(Database payload)
        {
            if (payload == null || m_EvaluationGraph == null)
                return Enumerable.Empty<MyObjectType>();
            return EvalNode(m_EvaluationGraph.root, payload.data);
        }

        public bool Eval(MyObjectType element)
        {
            if (m_EvaluationGraph.empty)
                return true;

            var filtered = EvalNode(m_EvaluationGraph.root, new []{element});
            return filtered.Contains(element);
        }

        static IEnumerable<MyObjectType> EvalNode(IQueryNode node, IEnumerable<MyObjectType> subset)
        {
            switch (node.type)
            {
                case QueryNodeType.Where:
                    return EvalNode(node.children[0], subset);
                case QueryNodeType.And:
                    return EvalNode(node.children[0], subset).Intersect(EvalNode(node.children[1], subset));
                case QueryNodeType.Or:
                    return EvalNode(node.children[0], subset).Union(EvalNode(node.children[1], subset));
                case QueryNodeType.Search:
                    if (node is not ISearchNode searchNode)
                        return Enumerable.Empty<MyObjectType>();
                    return subset.Where(o =>
                    {
                        var sd = GetSearchData(o);
                        if (searchNode.exact)
                            return sd.Any(d => d.Equals(searchNode.searchValue));
                        return sd.Any(d => d.IndexOf(searchNode.searchValue) >= 0);
                    });
                case QueryNodeType.Filter:
                    if (node is not IFilterNode filterNode)
                        return Enumerable.Empty<MyObjectType>();
                    switch (filterNode.filterId)
                    {
                        case "id":
                            return subset.Where(o => CompareValues(o.id, int.Parse(filterNode.filterValue), filterNode.operatorId));
                        case "n":
                            return subset.Where(o => CompareValues(o.name, filterNode.filterValue, filterNode.operatorId));
                        case "v":
                            return subset.Where(o => CompareValues(o.value, float.Parse(filterNode.filterValue), filterNode.operatorId));
                    }

                    return Enumerable.Empty<MyObjectType>(); ;
            }

            return Enumerable.Empty<MyObjectType>(); ;
        }

        static IEnumerable<string> GetSearchData(MyObjectType o)
        {
            return new[] { o.id.ToString(), o.name };
        }

        static bool CompareValues<T>(T valueA, T valueB, string op)
            where T : IComparable
        {
            switch (op)
            {
                case ":":
                    return valueA.ToString().Contains(valueB.ToString());
                case "=":
                    return valueA.CompareTo(valueB) == 0;
                case "!=":
                    return valueA.CompareTo(valueB) != 0;
                case ">":
                    return valueA.CompareTo(valueB) > 0;
                case "<":
                    return valueA.CompareTo(valueB) < 0;
                case ">=":
                    return valueA.CompareTo(valueB) >= 0;
                case "<=":
                    return valueA.CompareTo(valueB) <= 0;
            }

            return false;
        }
    }
}
```
