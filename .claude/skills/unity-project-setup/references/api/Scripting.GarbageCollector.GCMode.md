<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Scripting.GarbageCollector.GCMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set and get global garbage collector operation mode.

Setting the global operation mode changes the garbage collector behaviour for the entire application.

Not supported on the WebGL platform and in the Editor.

It is recommended that you only change the garbage collector operation mode on the application level and do not change it in third party libraries.

Subscribe to the GarbageCollector.GCModeChanged event to get notified when the garbage collector mode is changed.

**Disabling the Garbage Collector** Disabling the garbage collector by assigning GarbageCollector.Mode.Disabled completely disables the garbage collector. This means that the garbage collector thread will never stop your application to perform a collection. Also, calling System.GC.Collect() will have no effect and will not start a collection. Disabling the garbage collector has to be done with great care, as continuous allocations after disabling the garbage collector will result in a continuous increase in memory usage.

It is recommended that you only disable the garbage collector for long lived allocations. For example, in a game you should allocate all required memory for a level and then disable the garbage collector to avoid overhead during the level. After the level is completed and all memory is released, the garbage collector can then be enabled again and System.GC.Collect() can be called to reclaim memory before loading the next level.

**Controlling the Garbage Collector manually** You can set GCMode to GarbageCollector.Mode.Manual. This disables automatic invocations of the garbage collector, but still allows you to manually perform garbage collection. Manual collection gives you control over when collections happen, so you can fine-tune the smoothness of your content or your memory usage. Call either System.GC.Collect() for a full, blocking collection, or GarbageCollector.CollectIncremental to perform incremental garbage collection.

Additional resources: GarbageCollector.Mode.Enabled, GarbageCollector.Mode.Disabled, GarbageCollector.Mode.Manual.

```csharp
using System;
using UnityEngine;
using UnityEngine.Scripting;public class GarbageCollectorExample
{
    static void ListenForGCModeChange()
    {
        // Listen on garbage collector mode changes.
        GarbageCollector.GCModeChanged += (GarbageCollector.Mode mode) =>
        {
            Debug.Log("GCModeChanged: " + mode);
        };
    }    static void LogMode()
    {
        Debug.Log("GCMode: " + GarbageCollector.GCMode);
    }    static void EnableGC()
    {
        GarbageCollector.GCMode = GarbageCollector.Mode.Enabled;
        // Trigger a collection to free memory.
        GC.Collect();
    }    static void DisableGC()
    {
        GarbageCollector.GCMode = GarbageCollector.Mode.Disabled;
    }
}
```

Using the GCMode API.

```csharp
using System;
using UnityEngine;
using UnityEngine.Profiling;
using UnityEngine.Scripting;public class GCManualControl : MonoBehaviour
{
    // Perform an incremental collection every time we allocate more than 8 MB
    const long kCollectAfterAllocating = 8 * 1024 * 1024;    // Perform an instant, full GC if we have more than 128 MB of managed heap.
    const long kHighWater = 128 * 1024 * 1024;    long lastFrameMemory = 0;
    long nextCollectAt = 0;    void Start()
    {
        // Set GC to manual collections only.
        GarbageCollector.GCMode = GarbageCollector.Mode.Manual;
    }    void Update()
    {
        long mem = Profiler.GetMonoUsedSizeLong();
        if (mem < lastFrameMemory)
        {
            // GC happened.
            nextCollectAt = mem + kCollectAfterAllocating;
        }
        if (mem > kHighWater)
        {
            // Trigger immediate GC
            System.GC.Collect(0);
        }
        else if (mem >= nextCollectAt)
        {
            // Trigger incremental GC
            UnityEngine.Scripting.GarbageCollector.CollectIncremental();
            lastFrameMemory = mem + kCollectAfterAllocating;
        }
        lastFrameMemory = mem;
    }
}
```

Manual GC control using GarbageCollector.Mode.Manual.
