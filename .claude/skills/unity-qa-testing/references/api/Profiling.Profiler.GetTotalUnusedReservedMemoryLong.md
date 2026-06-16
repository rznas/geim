<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetTotalUnusedReservedMemoryLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** The amount of unused memory in the reserved pools. This returns 0 if the Profiler is not available.

### Description

Unity allocates memory in pools for usage when unity needs to allocate memory. This function returns the amount of unused memory in these pools.

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
