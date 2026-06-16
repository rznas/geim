<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.ClearCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| expiration | The number of seconds that AssetBundles may remain unused in the cache. |

### Returns

**bool** True when cache clearing succeeded, false if cache was in use.

### Description

Removes all AssetBundle content that has been cached by the current application.

This method is not available to WebPlayer applications that use the shared cache.

Additional resources: Downloading Asset Bundles.

```csharp
using System.IO;
using UnityEngine;public class Example : MonoBehaviour
{
    void ClearCacheExample()
    {
        Directory.CreateDirectory("Cache1");
        Directory.CreateDirectory("Cache2");
        Directory.CreateDirectory("Cache3");        Caching.AddCache("Cache1"); //Placed in cache list at position 1
        Caching.AddCache("Cache2"); //Placed in cache list at position 2
        Caching.AddCache("Cache3"); //Placed in cache list at position 3        //Clears all of the caches
        bool success = Caching.ClearCache();        if (!success)
        {
            Debug.Log("Unable to clear cache");
        }
    }
}
```

Web player is not supported from 5.4.0 and beyond.
