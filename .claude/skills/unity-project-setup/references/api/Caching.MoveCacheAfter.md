<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Caching.MoveCacheAfter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The Cache to move. |
| dst | The Cache which should come before the source Cache in the cache list. |

### Description

Moves the source Cache after the destination Cache in the cache list.

```csharp
using System.IO;
using UnityEngine;public class Example : MonoBehaviour
{
    void MoveCacheAfterExample()
    {
        Directory.CreateDirectory("Cache1");
        Directory.CreateDirectory("Cache2");
        Directory.CreateDirectory("Cache3");        Cache c1 = Caching.AddCache("Cache1"); //Placed in cache list at position 1
        Cache c2 = Caching.AddCache("Cache2"); //Placed in cache list at position 2
        Cache c3 = Caching.AddCache("Cache3"); //Placed in cache list at position 3        Caching.MoveCacheAfter(c2, c3);        //Now the Cache list looks like:
        //Position 0: Default Cache
        //Position 1: Cache1
        //Position 2: Cache3
        //Position 3: Cache2
    }
}
```
