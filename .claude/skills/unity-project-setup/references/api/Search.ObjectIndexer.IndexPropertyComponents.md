<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ObjectIndexer.IndexPropertyComponents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentIndex | Document handle for the indexed property. |
| name | Key used to retrieve the value. |
| value | Value to add to the index. |

### Description

Indexes multiple variations of a property value.

In the example, indexing "AudioClipComponent", will split the word in many ways and index variations such as "Audio", "Clip", "Component", "ACC", etc.

The user will be able to search the property with `mytype:clip` instead of having to start with `audio`.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_ObjectIndexer_IndexPropertyComponents
{
    [CustomObjectIndexer(typeof(MonoScript), version = 1)]
    internal static void IndexMonoScriptClassType(CustomObjectIndexerTarget context, ObjectIndexer indexer)
    {
        if (!(context.target is MonoScript script))
            return;

        var klass = script.GetClass();
        if (klass == null)
            return;
        indexer.IndexPropertyComponents(context.documentIndex, "class", klass.Name);
    }

    [MenuItem("Examples/ObjectIndexer/IndexPropertyComponents")]
    public static void Run()
    {
        void PrintResults(IEnumerable<SearchItem> items) => Debug.Log(string.Join(", ", items.Select(r => r.id)));

        var context = SearchService.CreateContext("asset", "a:examples class:property");
        context.asyncItemReceived += (context, items) => PrintResults(items);

        PrintResults(SearchService.GetItems(context));
    }
}
```

This example suppose you are indexing MonoScript with an index similar to this one:

```csharp
{
    "name": "examples",
    "type": "asset",
    "roots": [],
    "includes": [
        ".cs"
    ],
    "excludes": [
        "Temp/",
        "External/"
    ],
    "options": {
        "disabled": false,
        "types": true,
        "properties": true,
        "extended": false,
        "dependencies": false
    },
    "baseScore": 100
}
```
