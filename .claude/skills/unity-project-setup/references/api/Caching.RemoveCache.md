<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.RemoveCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cache | The Cache to be removed. |

### Returns

**bool** Returns true if the Cache is removed.

### Description

Removes the Cache from cache list.

```csharp
using System.IO;
using UnityEngine;public class Example : MonoBehaviour
{
    void RemoveCacheExample()
    {
        Directory.CreateDirectory("Cache1");
        Directory.CreateDirectory("Cache2");
        Directory.CreateDirectory("Cache3");        Cache c1 = Caching.AddCache("Cache1"); //Placed in cache list at position 1
        Cache c2 = Caching.AddCache("Cache2"); //Placed in cache list at position 2
        Cache c3 = Caching.AddCache("Cache3"); //Placed in cache list at position 3        bool successfullyRemovedCache = Caching.RemoveCache(c1);        if (!successfullyRemovedCache)
        {
            Debug.Log("Unable to remove cache.");
        }        //Now, if the remove was successful, the Cache list looks like:
        //Position 0: Default Cache
        //Position 1: Cache2
        //Position 2: Cache3
    }
}
```
