<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.AddFramesFromFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| file | The name of the file containing the frame data, including extension. |

### Description

Displays the recorded profile data in the profiler.

The Profiler appends the loaded data after the last frame in its buffer.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        Profiler.AddFramesFromFile("mylog.raw"); // or mylog.data
    }
}
```

Additional resources: Profiler.
