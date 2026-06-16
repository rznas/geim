<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchFlags.NoIndexing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prevents the search from using indexing. Asset Provider will use its builtin Find in Files provider.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

public class SearchFlags_NoIndexing
{
    [MenuItem("Examples/SearchFlags/NoIndexing")]
    public static void RequestAll()
    {
        // Find all assets matching the word Search without using any indexed data (will rely on the Find Files provider).
        SearchService.Request("p: Search", (SearchContext context, IList<SearchItem> items) =>
        {
            foreach (var item in items)
                Debug.Log(item);
        }, SearchFlags.NoIndexing);
    }
}
```
