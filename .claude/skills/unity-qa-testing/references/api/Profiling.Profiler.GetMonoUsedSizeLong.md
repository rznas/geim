<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetMonoUsedSizeLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** Returns a long integer value of the memory in use.

### Description

Gets the allocated managed memory for live objects and non-collected objects.

This function returns the amount of allocated managed-memory for all objects, both live and non-collected. Always call GC.Collect before calling this function, because non-referenced objects still take up space until the garbage collector (GC) collects them. This returns an ever-increasing value until GC.Collect is called.

 The size of Profiler.GetMonoHeapSizeLong might decrease after a subsequent GC.Collect is called, if the first GC.Collect call collected all remaining objects in a heap section. Allocating new memory might also implicitly re-trigger GC.Collect and if it finds more objects that are ready to be collected since the first call, it might lower the value that Profiler.GetMonoUsedSizeLong returns even further. Also, Unity might allocate managed memory on threads, or threaded code might get rid of pointers to managed allocations, so while it might look like no code should have changed the amount of managed allocations between two points of measurements, that is not necessarily the case.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;class GetMonoExample : MonoBehaviour
{
    void Update()
    {
        System.GC.Collect();
        System.GC.WaitForPendingFinalizers();
        Debug.Log("Mono used size" + Profiler.GetMonoUsedSizeLong() + "Bytes");
    }
}
```
