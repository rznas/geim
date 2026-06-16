<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchFlags.None.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

No specific search options. Result will be unsorted.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

public class SearchFlags_None
{
    [MenuItem("Examples/SearchFlags/None")]
    public static void RequestAll()
    {
        SearchService.Request("t:Script", (SearchContext context, IList<SearchItem> items) =>
        {
            foreach (var item in items)
                Debug.Log(item);
        }, SearchFlags.None);
    }
}
```
