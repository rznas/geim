<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetMonoHeapSizeLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** The size of the managed heap.

### Description

Returns the size of the reserved space for managed-memory.

This will grow when the total allocated managed-memory exceeds the currently reserved amount. The size of the reserved space for managed allocations, will also have an effect on how frequent the garbage collector will run, and how long it takes to make a garbage collection. The larger the heap, the longer it takes, but the less often it will run.

**Note**: This API is available even when the rest of Profiler class is not available (ie, in release builds).

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        Debug.Log("Allocated Mono heap size" + Profiler.GetMonoHeapSizeLong() + "Bytes");
    }
}
```
