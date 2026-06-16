<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetTotalAllocatedMemoryLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** The amount of memory allocated by Unity. This returns 0 if the Profiler is not available.

### Description

The total memory allocated by the internal allocators in Unity. Unity reserves large pools of memory from the system; this includes double the required memory for textures because Unity keeps a copy of each texture on both the CPU and GPU. This function returns the amount of used memory in those pools.

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
