<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.CollectionPool_2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Collection such as List, HashSet, Dictionary etc can be pooled and reused by using a CollectionPool.

Note the CollectionPool is not thread-safe. Additional resources: DictionaryPool<T0,T1>, HashSetPool<T0>, ListPool<T0>.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Pool;// This example shows how both version of Get could be used to simplify a line of points.
public class Simplify2DLine
{
    public List<Vector2> SimplifyLine(Vector2[] points)
    {
        // This version will only be returned to the pool if we call Release on it.
        var simplifiedPoints = CollectionPool<List<Vector2>, Vector2>.Get();        // Copy the points into a temp list so we can pass them into the Simplify method
        // When the pooled object leaves the scope it will be Disposed and returned to the pool automatically.
        // This version is ideal for working with temporary lists.
        using (CollectionPool<List<Vector2>, Vector2>.Get(out List<Vector2> tempList))
        {
            for (int i = 0; i < points.Length; ++i)
            {
                tempList.Add(points[i]);
            }            LineUtility.Simplify(tempList, 1.5f, simplifiedPoints);
        }
        return simplifiedPoints;
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
