<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-minWordIndexationLength.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Minimal indexed word size. Default is 2.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

/// <summary>
/// The property minWordIndexationLength is used to prevent indexing too many small
/// variations of words. By default it is set to 2, meaning that one-letter variations
/// won't be indexed, but you can control
/// how many character word variations are indexed.
/// </summary>
static class Example_SearchIndexer_minWordIndexationLength
{
    [MenuItem("Examples/SearchIndexer/minWordIndexationLength")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject())
        {
            // Search query will have to include at least the first 5 characters to return any results.
            minWordIndexationLength = 5,
            minQueryLength = 5
        };

        si.Start();
        var di = si.AddDocument("document1");
        si.AddWord("technologies", 0, di);
        si.Finish(() =>
        {
            OnIndexReady(si);
            // Dispose the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }

    private static void OnIndexReady(SearchIndexer si)
    {
        Debug.Assert(si.Search("tech").Count() == 0, "tech should not return any match");
        Debug.Assert(si.Search("techno").Count() == 1, "No result were found");
    }
}
```
