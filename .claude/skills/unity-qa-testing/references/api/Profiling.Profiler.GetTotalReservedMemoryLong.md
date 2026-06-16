<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetTotalReservedMemoryLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** Memory reserved by Unity in bytes. This returns 0 if the Profiler is not available.

### Description

The total memory Unity has reserved.

This function returns the total memory Unity has reserved for current and future allocations. If the reserved memory is fully used, Unity will allocate more memory from the system as required.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class Example : MonoBehaviour
{
    void Update()
    {
        Debug.Log("Total Reserved memory by Unity: " + Profiler.GetTotalReservedMemoryLong() + "Bytes");
        Debug.Log("- Allocated memory by Unity: " + Profiler.GetTotalAllocatedMemoryLong() + "Bytes");
        Debug.Log("- Reserved but not allocated: " + Profiler.GetTotalUnusedReservedMemoryLong() + "Bytes");
    }
}
```
