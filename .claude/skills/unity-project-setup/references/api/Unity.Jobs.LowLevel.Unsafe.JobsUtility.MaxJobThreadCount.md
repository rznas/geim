<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobsUtility.MaxJobThreadCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of job threads that the job system can create.

This maximum is the maximum number of threads that the job can system support. However, the maximum number of job worker threads that the job system creates is lower because the job system doesn't create more job worker threads than logical CPU cores on the target hardware. This value is useful for compile time constants, however when used for creating buffers it might be larger than what you need. If you want to allocate a buffer that can be subdivided evenly between job worker threads, use the runtime constant that JobsUtility.ThreadIndexCount returns. SA: Unity.Jobs.LowLevel.Unsafe.JobsUtility.ThreadIndexCount

```csharp
using UnityEngine;public class JobWorkerExample : MonoBehaviour
{
    void Update()
    {
        // Sets worker count thread to 1
        Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerCount = 1;
        // Sets worker count thread to 4
        Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerCount = 4;
        // Reads the value of JobWorkerCount and outputs it to the Unity log
        Debug.Log("${ Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerCount}");    }
}
```
