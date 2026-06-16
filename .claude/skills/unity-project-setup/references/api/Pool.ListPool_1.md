<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Pool.ListPool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A version of CollectionPool<T0,T1> for Lists.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Pool;// This example shows how both version of Get could be used to simplify a line of points.
public class Simplify2DLine
{
    public List<Vector2> SimplifyLine(Vector2[] points)
    {
        // This version will only be returned to the pool if we call Release on it.
        var simplifiedPoints = ListPool<Vector2>.Get();        // Copy the points into a temp list so we can pass them into the Simplify method
        // When the pooled object leaves the scope it will be Disposed and returned to the pool automatically.
        // This version is ideal for working with temporary lists.
        using (var pooledObject = ListPool<Vector2>.Get(out List<Vector2> tempList))
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

### Inherited Members

### Static Methods

| Method | Description |
| --- | --- |
| Get | Get an instance from the pool. If the pool is empty then a new instance will be created. |
| Release | Returns the instance back to the pool. |
