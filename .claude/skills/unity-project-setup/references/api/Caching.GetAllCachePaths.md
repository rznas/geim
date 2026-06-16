<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.GetAllCachePaths.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cachePaths | List of all the cache paths. |

### Description

Returns all paths of the cache in the cache list.

```csharp
using System.IO;
using System.Collections.Generic;
using UnityEngine;public class Example : MonoBehaviour
{
    void GetAllCachePathExample()
    {
        Directory.CreateDirectory("Cache1");
        Directory.CreateDirectory("Cache2");
        Directory.CreateDirectory("Cache3");        Cache c1 = Caching.AddCache("Cache1"); //Placed in cache list at position 1
        Cache c2 = Caching.AddCache("Cache2"); //Placed in cache list at position 2
        Cache c3 = Caching.AddCache("Cache3"); //Placed in cache list at position 3        List<string> cachePaths = new List<string>();
        Caching.GetAllCachePaths(cachePaths);        //cachePaths[0] is Cache1
        //cachePaths[1] is Cache2
        //cachePaths[2] is Cache3
    }
}
```
