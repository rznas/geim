<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.GetCacheAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cacheIndex | Index of the cache to get. |

### Returns

**Cache** A reference to the Cache at the index specified.

### Description

Returns the Cache at the given position in the cache list.

```csharp
using System.IO;
using UnityEngine;public class Example : MonoBehaviour
{
    void GetCacheAtExample()
    {
        Directory.CreateDirectory("Cache1");
        Directory.CreateDirectory("Cache2");
        Directory.CreateDirectory("Cache3");        Caching.AddCache("Cache1"); //Placed in cache list at position 1
        Caching.AddCache("Cache2"); //Placed in cache list at position 2
        Caching.AddCache("Cache3"); //Placed in cache list at position 3        Cache c0 = Caching.GetCacheAt(0); //The default cache
        Cache c1 = Caching.GetCacheAt(1);
        Cache c2 = Caching.GetCacheAt(2);
        Cache c3 = Caching.GetCacheAt(3);        string path0 = c0.path; //The default cache
        string path1 = c1.path;
        string path2 = c2.path;
        string path3 = c3.path;
    }
}
```
