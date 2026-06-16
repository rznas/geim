<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchExpression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search expressions allow you to add to the search query language to express complex queries that cross-reference multiple providers, for example, to search for all objects in a scene that use a shader that doesn’t compile.

Search expressions can be chained together to transform or perform set manipulations on Search Items.

The manual contains example on How to use Search Expression .

These examples show how SearchExpression are used in an evaluator:

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

### Properties

| Property | Description |
| --- | --- |
| alias | Alias name of an expression. This is useful to assign a more readable results to methematic expression (lile Count). |
| innerText | This is the inner text of the expression. This means the text without any special delimiters. Ex: the expression [1, 2, 3] which is a set expression would have an innerText of 1,2,3. |
| name | The name of the evaluator function or hte outer text. This is mostly a debuggin field. |
| outerText | This is the outer text of the expression. This means the full text with any special delimiters. Ex: the expression [1, 2, 3] which is a set expression would have an outerText of [1,2,3]. |
| parameters | The parameter list of the expression. Note that each parameter is an expression in itself. |
| types | Aggrregate types of the expression. This is mostly used to validate parameters of an expression. |

### Public Methods

| Method | Description |
| --- | --- |
| Execute | Execute a SearchEXpression givent a certain SearchContext Depending on flags the expression might be valuated in a worker thread (by default) or in the main thread. It returns a an enumerable list of SearchItem. |
| GetBooleanValue | Try to parse the innerText and convert it to a boolean value. |
| GetNumberValue | Try to parse the innerText and convert it to a double value. |
| IsKeyword | Check if the innerText of an expression is a builtin SearchExpressionKeyword. |
| ToString | Convert an expression to a string representation. |

### Static Methods

| Method | Description |
| --- | --- |
| Check | Execute a SearchExpression and checks if the internal value of the first yielded SearchItem is truish. Not 0, not null, not "" and not false. |
| CreateId | Generate a unique id. This is useful when creating new SearchItem. |
| CreateItem | Create a new SearchItem from a value with an optional label. |
| FormatItem | Take a format string and replace all selectors in it with the selected values obtained from a SearchItem. |
| GetFormatString | Extract a format string from a given expression. This function should be used to extract a format string from an input parameter of a SearchExpression. For example: the evaluator print{"this is it: @label"} takes a format string as its first parameter. |
| IsTrue | Check if the internal value of a SearchItem is truish. It means the value is not 0, not null, not "" and not false. |
| ProcessValues | Take a group of SearchItems and apply a processHandler transformer function to the item in order to sets its internal value or an outputValueField. Note that these items are processed in the main thread thus allowing you to resolve any kind of selectors. |
| TryConvertToDouble | Resolve a selector on an item and try to convert the selected value to a double. |
