<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler-enableAllocationCallstacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables the recording of callstacks for managed allocations.

When enabled, the Unity player saves callstack for each managed allocation sample which is known as *GC.Alloc*. You can see the callstacks in the Timeline View or in the Object Details pane of the Hierarchy View when selecting the *GC.Alloc* sample.

You must also set Profiler.enabled to `true` in order to start the capture.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Profiler.logFile = "mylog"; //Also supports passing "myLog.raw"
        Profiler.enableBinaryLog = true;
        Profiler.enableAllocationCallstacks = true;
        Profiler.enabled = true;        // Optional, if more memory is needed for the buffer
        Profiler.maxUsedMemory = 256 * 1024 * 1024;
    }
}
```

**Note:** Callstacks capture adds noticable performance overhead to the profiling for every managed allocation.
