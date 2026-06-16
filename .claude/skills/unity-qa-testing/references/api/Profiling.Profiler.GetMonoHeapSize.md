<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetMonoHeapSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the size of the mono heap.

This is the reserved system memory that Mono is using for allocations.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class Example : MonoBehaviour
{
    void Update()
    {
        #if ENABLE_PROFILER
        Debug.Log("Allocated Mono heap size" + Profiler.GetMonoHeapSize() + "Bytes");
        #endif
    }
}
```
