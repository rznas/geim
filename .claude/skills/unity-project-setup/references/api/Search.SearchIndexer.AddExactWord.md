<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.AddExactWord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| word | Word to add to the index. |
| score | Relevance score of the word. |
| documentIndex | Document where the indexed word was found. |

### Description

Adds a new word coming from a document to the index. The word is added with multiple variations allowing partial search.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_AddExactWord
{
    [MenuItem("Examples/SearchIndexer/AddExactWord")]
    public static void Run()
    {
        using var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        var di = si.AddDocument("document1");

        // AddExactWord is used to add exact word match on queries using !"exact_match"
        si.AddExactWord("unity2020", score: 0, di);

        si.Finish(new string[0]);
        Debug.Assert(si.Search("!\"unity2020\"").Count() == 1, "No result found");
    }
}
```
