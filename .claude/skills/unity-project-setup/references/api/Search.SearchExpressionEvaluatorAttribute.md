<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpressionEvaluatorAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to register new SearchExpressionEvaluator. This will allow to use new function in SearchExpression. As a side note all builtin evaluators (count{}, select{}, ...) are defined using this attribute.

```csharp
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

public class SearchExpressionEvaluator_Example
{
    [SearchExpressionEvaluator(SearchExpressionType.Iterable | SearchExpressionType.Variadic)]
    [SearchExpressionEvaluatorSignatureOverload(SearchExpressionType.Number, SearchExpressionType.Iterable | SearchExpressionType.Variadic)]
    [Description("Extract and returns the X first results for each expression.")]
    public static IEnumerable<SearchItem> TakeXFirst(SearchExpressionContext c)
    {
        var argIndex = 0;
        var takeNumber = 1;
        if (c.args[0].types.HasFlag(SearchExpressionType.Number))
        {
            ++argIndex;
            takeNumber = Math.Max((int)(c.args[0].GetNumberValue(takeNumber)), 0);
        }

        for ( ; argIndex < c.args.Length; ++argIndex)
        {
            var iterable = c.args[argIndex].Execute(c);
            var taken = 0;
            foreach (var item in iterable)
            {
                if (item == null)
                    yield return null;
                else
                {
                    yield return item;
                    ++taken;
                    if (taken == takeNumber)
                    {
                        c.Break();
                        break;
                    }
                }
            }
        }
    }


    [MenuItem("Examples/ExpressionEvaluator/Take First")]
    static void TestTakeFirst()
    {
        var ctx = SearchService.CreateContext("takexfirst{[1,2,3,4], [34, 45, 66], t:script}");
        SearchService.ShowWindow(ctx);
    }

    [MenuItem("Examples/ExpressionEvaluator/Take 2 First")]
    static void TestTake2First()
    {
        var ctx = SearchService.CreateContext("takexfirst{2, [1,2,3,4], [34, 45, 66], t:script}");
        SearchService.ShowWindow(ctx);
    }

    [Description("Returns ids of current selection")]
    [SearchExpressionEvaluator(SearchExpressionEvaluationHints.ThreadNotSupported)]
    public static IEnumerable<SearchItem> SelectionIds(SearchExpressionContext c)
    {
        var instanceIds = UnityEditor.Selection.instanceIDs;
        foreach (var id in instanceIds)
        {
            yield return SearchExpression.CreateItem(id, c.ResolveAlias("selected id"));
        }
    }

    [MenuItem("Examples/ExpressionEvaluator/Selection ids")]
    static void SelectionIds()
    {
        var ctx = SearchService.CreateContext("selectionids{}");
        SearchService.ShowWindow(ctx);
    }

    [Description("Returns asset paths corresponding to a list of instance ids")]
    [SearchExpressionEvaluator("IdsToPaths", SearchExpressionEvaluationHints.ThreadNotSupported, SearchExpressionType.Iterable)]
    public static IEnumerable<SearchItem> IdsToPath(SearchExpressionContext c)
    {
        foreach (var idItem in c.args[0].Execute(c))
        {
            if (SearchExpression.TryConvertToDouble(idItem, out var idNum))
            {
                var id = (int)idNum;
                var path = AssetDatabase.GetAssetPath(id);
                if (!string.IsNullOrEmpty(path))
                {
                    yield return SearchExpression.CreateItem(path, c.ResolveAlias("asset path"));
                }
            }
        }
    }

    [MenuItem("Examples/ExpressionEvaluator/Selection ids to Paths")]
    static void IdsToPaths()
    {
        var ctx = SearchService.CreateContext("IdsToPaths{selectionids{}}");
        SearchService.ShowWindow(ctx);
    }

    [Description("Convert arguments to a string allowing you to format the result.")]
    [SearchExpressionEvaluator(SearchExpressionType.Selector | SearchExpressionType.Text, SearchExpressionType.Iterable | SearchExpressionType.Literal | SearchExpressionType.Variadic)]
    [SearchExpressionEvaluatorSignatureOverload(SearchExpressionType.Iterable | SearchExpressionType.Literal | SearchExpressionType.Variadic)]
    public static IEnumerable<SearchItem> FormatItems(SearchExpressionContext c)
    {
        var skipCount = 0;
        if (SearchExpression.GetFormatString(c.args[0], out var formatStr))
            skipCount++;
        var items = c.args.Skip(skipCount).SelectMany(e => e.Execute(c));
        var dataSet = SearchExpression.ProcessValues(items, null, item => SearchExpression.FormatItem(c.search, item, formatStr));
        return dataSet;
    }

    [MenuItem("Examples/ExpressionEvaluator/Get Script Paths")]
    static void GetScriptPaths()
    {
        var ctx = SearchService.CreateContext("formatitems{t:script search}");
        SearchService.ShowWindow(ctx);
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| SearchExpressionEvaluatorAttribute | Use this attribute to register a static C# function as a new evaluator. SearchExpressionEvaluator when use within a SearchExpression can have a signature that is validated against the passed parameters. |
