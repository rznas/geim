<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.GetCacheByPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cachePath | The cache path. |

### Returns

**Cache** A reference to the Cache with the given path.

### Description

Returns the Cache that has the given cache path.

```csharp
using System.IO;
using UnityEngine;public class Example : MonoBehaviour
{
    void GetCacheByPathExample()
    {
        Directory.CreateDirectory("Cache1");
        Directory.CreateDirectory("Cache2");
        Directory.CreateDirectory("Cache3");        Caching.AddCache("Cache1"); //Placed in cache list at position 1
        Caching.AddCache("Cache2"); //Placed in cache list at position 2
        Caching.AddCache("Cache3"); //Placed in cache list at position 3        Cache c1 = Caching.GetCacheByPath("Cache1");
        Cache c2 = Caching.GetCacheByPath("Cache2");
        Cache c3 = Caching.GetCacheByPath("Cache3");
    }
}
```
