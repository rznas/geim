<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetMonoUsedSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the used size from mono.

This is the amount of allocated memory for non collected objects in Mono memory always call GC.Collect before this call, as non referenced objects will still take up space untill they are collected. If not Collecting, this will display an ever growing number untill Collect is called elsewhere.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
    #if ENABLE_PROFILER
        System.GC.Collect();
        Debug.Log("Mono used size" + UnityEngine.Profiling.Profiler.GetMonoUsedSize() + "Bytes");
            #endif
    }
}
```
