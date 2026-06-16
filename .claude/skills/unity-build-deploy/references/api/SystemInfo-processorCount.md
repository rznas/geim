<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-processorCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of processors present (Read Only).

Returns the number of "logical processors" (threads) as reported by the operating system. This is distinct from the number of physical cores. On CPUs with Hyper-Threading or simultaneous multithreading (SMT), a single physical core is split into two logical cores. For example, a CPU with 4 physical cores and 8 threads will return `8`. On Android, it reports the number of active processors.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints using the following format - "4" on a quad-core CPU.
        print(SystemInfo.processorCount);
    }
}
```

Additional resources: SystemInfo.processorType, SystemInfo.processorFrequency.
