<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.BeginSample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerPtr | Profiler marker handle. |

### Description

Starts profiling a piece of code marked with a custom name that the *markerPtr* handle has defined.

Code marked with BeginSample and EndSample shows up in the Profiler hierarchy. Always use EndSample to close a started section of the instrumented code.


**Note:** Both BeginSample and EndSample are thread safe and can be used in jobified code.
 The low level Profiler API is included in a Release Build.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;
using System;class Example
{
    static readonly IntPtr markerHandle = ProfilerUnsafeUtility.CreateMarker("MyMarker", ProfilerUnsafeUtility.CategoryScripts, MarkerFlags.Default, 0);
    static unsafe void DoWork(int num)
    {
        ProfilerUnsafeUtility.BeginSample(markerHandle);
        //...
        ProfilerUnsafeUtility.EndSample(markerHandle);
    }
}
```

Use Recorder to obtain per-frame timings in the Player for the specific marker name.

Additional resources: CreateMarker, EndSample.
