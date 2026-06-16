<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.EndThreadProfiling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Frees the internal resources used by the Profiler for the thread.

Profiler allocates memory to store information about the thread. To free that memory use *EndThreadProfiling*. Once called, Profiler stops collecting any data on the thread.

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

Additional resources: Profiler.BeginThreadProfiling, CustomSampler.
