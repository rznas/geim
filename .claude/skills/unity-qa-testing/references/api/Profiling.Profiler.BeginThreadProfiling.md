<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.BeginThreadProfiling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| threadGroupName | The name of the thread group to which the thread belongs. |
| threadName | The name of the thread. |

### Description

Enables profiling on the thread from which you call this method.

Makes the thread show up with its registered name in the Profiler Timeline View, showing the duration of each sample on the thread. Samples which cross frame boundaries are sliced and might contribute time to multiple frames.

**Note:** Calling this method on an internal Unity thread (such as main thread, render thread or job system threads) has no effect.

```csharp
using UnityEngine;
using UnityEngine.Profiling;
using System.Threading;public class ExampleClass : MonoBehaviour
{
    CustomSampler sampler;
    void Start()
    {
        sampler = CustomSampler.Create("MyCustomSampler");
        var thread = new Thread(MyThreadFunc) { IsBackground = true };
        thread.Start();
    }    void MyThreadFunc()
    {
        Profiler.BeginThreadProfiling("My threads", "My thread 1");
        // Now samples will show up in the profiler timeline view
        for (int i = 0; i < 10; i++)
        {
            sampler.Begin();
            // ...
            sampler.End();
        }        // Unregister the thread before exit
        Profiler.EndThreadProfiling();
    }
}
```

**Note:** Profiler.EndThreadProfiling should always be called before thread destruction to free internal resources.

Additional resources: Profiler.EndThreadProfiling, CustomSampler.
