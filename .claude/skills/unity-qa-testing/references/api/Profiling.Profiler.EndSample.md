<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.EndSample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ends the current profiling sample.

The Profiler displays samples in its Hierarchy and Timeline views.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        Profiler.BeginSample("MyPieceOfCode");
        // Code to measure...
        Profiler.EndSample();
    }
}
```

Additional resources: Profiler.BeginSample, Profiler.
