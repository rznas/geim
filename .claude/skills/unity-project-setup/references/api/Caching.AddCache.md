<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.AddCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cachePath | Path to the cache folder. |

### Description

Add a cache with the given path.

This allows you to add a new cache to the cache list. A reference to a Cache will be returned.

```csharp
using System.IO;
using UnityEngine;public class Example : MonoBehaviour
{
    void AddCacheAtPath(string path)
    {
        if (!Directory.Exists(path))
            Directory.CreateDirectory(path);        Cache newCache = Caching.AddCache(path);        //Make sure your new Cache is valid
        if (newCache.valid)
        {
            //If you wanted to set your newly created cache to the active cache
            Caching.currentCacheForWriting = newCache;
        }
    }
}
```
